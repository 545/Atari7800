/** FILE
 *  mastermindVGA.sv
 *
 *  BRIEF
 *  Module that acts an an interface between the Mastermind game and
 *  the VGA output.
 *
 *  The game field will look like a standard Mastermind playing field,
 *  with a small number in the lower right indicating the number of games
 *  available.
 *
 *  Zorgian terminology:
 *  Znarly = correct shape, correct spot
 *  Zood   = correct shape, wrong spot
 *
 *  AUTHOR
 *  Anita Zhang (anitazha)
 */

/****** File-wide Colors ***********/
typedef enum logic [23:0] {
    RED      = {8'hFF, 8'h00, 8'h00},
    GREEN    = {8'h00, 8'hFF, 8'h00},
    BLUE     = {8'h00, 8'h00, 8'hFF},
    CYAN     = {8'h00, 8'hFF, 8'hCC},
    PURPLE   = {8'h99, 8'h00, 8'hFF},
    YELLOW   = {8'hFF, 8'hFF, 8'h00},
    BLACK    = {8'h00, 8'h00, 8'h00},
    WHITE    = {8'hFF, 8'hFF, 8'hFF}
} color_t;

/****** File-wide Shapes ***********/
typedef enum logic [2:0] {
    LEFTTOP  = 3'b001,  // blue
    WALL     = 3'b010,  // red
    RIGHTTOP = 3'b011,  // cyan
    EQUAL    = 3'b100,  // purple
    RIGHTBOT = 3'b101,  // green
    LEFTBOT  = 3'b110   // yellow
} shape_t;

/** BRIEF
 *  Main module that handles user input and displays game data.
 */

module mastermindVGA (
    input  logic        CLOCK_50,
    // VGA display signals -- route directly to FPGA pins
    output logic [7:0]  VGA_R, VGA_G, VGA_B,
    output logic        VGA_BLANK_N, VGA_CLK, VGA_SYNC_N,
    output logic        VGA_VS, VGA_HS,
    // game information
    input  logic [3:0]  numGames,
    input  logic        loadNumGames,
    // Items for a particular round
    input  logic [3:0]  roundNumber,
    input  logic [11:0] guess,
    input  logic        loadGuess,
    input  logic [3:0]  znarly, zood,
    input  logic        loadZnarlyZood,
    input  logic        clearGame,
    // master patterns
    input  logic [11:0] masterPattern,
    input  logic        displayMasterPattern,
    // other
    input  logic        reset
    );

    /****************************************
     *       Internal Signals
     ****************************************/

    // game data
    logic [7:0][3:0][2:0] memGuess;
    logic [7:0][3:0]      memZnarly;
    logic [7:0][3:0]      memZood;
    logic [3:0]           memNumGames;
    logic [3:0][2:0]      master;
    // VGA data
    logic [9:0]           x, y;
    logic                 blank;
    // drawing data
    logic [2:0]           shapeSel;
    logic [3:0]           numValue;
    logic [1:0]           masterIdx, guessIdxX;
    logic [2:0]           guessIdxY;
    logic [3:0]           gIdxX, gIdxY;
    logic                 inGameZoneX, inGameZoneY;
    logic                 isNum, isCredit, isRound;
    logic                 isMaster, isZZ, isShape;
    color_t               zzColor, shapeColor;
    color_t               color;
    // loop counters
    integer               i, j;
    // other
    logic                 clk;

    // game playing field
    localparam X0 = 10'd169;
    localparam X1 = 10'd481;
    localparam Y0 = 10'd10;
    localparam Y1 = 10'd468;
    localparam GSIDE = 10'd52;    // grid width
    // specific playing field coordinates
    localparam ZZ_X = 10'd429;    // znarly/zood X position
    localparam MASTER_Y = 10'd426; // master pattern Y position

    // renamed signals
    assign clk = CLOCK_50;
    assign master = masterPattern;

    /****************************************
     *       VGA data
     ****************************************/

    vga vgaCounter (
            .row        (y),
            .col        (x),
            .HS         (VGA_HS),
            .VS         (VGA_VS),
            .*);

    assign VGA_BLANK_N           = ~blank;
    assign VGA_CLK               = CLOCK_50;
    assign VGA_SYNC_N            = 1'b0;
    assign {VGA_R, VGA_G, VGA_B} = color;

    /****************************************
     *          Store Game Info
     ****************************************/

    registerAZ #(4) numGamesReg (
            .Q      (memNumGames),
            .D      (numGames),
            .clr    (1'b0),
            .en     (loadNumGames),
            .*);

    // have guess separate so the switch flipping is displayed
    always_ff @(posedge clk, posedge reset) begin
        if (reset)
            memGuess <= 96'b0;
        else if (clearGame)
            memGuess <= 96'b0;
        else if (loadGuess)
            memGuess[roundNumber] <= guess;
    end

    // only store znarly and zood when ready
    always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            memZnarly <= 32'b0;
            memZood <= 32'b0;
        end
        else if (clearGame) begin
            memZnarly <= 32'b0;
            memZood <= 32'b0;
        end
        else if (loadZnarlyZood) begin
            memZood[roundNumber]   <= zood;
            memZnarly[roundNumber] <= znarly;
        end
    end

    /****************************************
     *          Color/Boundary Assignments
     ****************************************/

    range_check gameFieldX (
            .val        (x),
            .low        (X0),
            .high       (X1),
            .is_between (inGameZoneX)
            );
    
    range_check gameFieldY (
            .val        (y),
            .low        (Y0),
            .high       (Y1),
            .is_between (inGameZoneY)
            );
    
    always_comb begin
        color = BLACK;
        if (inGameZoneX & inGameZoneY) begin
            // round number
            if (isRound & isNum)
                color = WHITE;
            // credits
            else if (isCredit & isNum)
                color = CYAN;
            // znarly/zood
            else if (isZZ)
                color = zzColor;
            // master shape
            else if (isMaster & displayMasterPattern)
                color = shapeColor;
            // guess shape
            else if (isShape)
                color = shapeColor;
        end
    end

    /****************************************
     *       Draw Things
     ****************************************/

    // grid index (of the playing field) -- "grid" is 6 x 9
    assign gIdxX     = (inGameZoneX ? ((x - X0) / GSIDE) : 4'b1111);
    assign gIdxY     = (inGameZoneY ? ((y - Y0) / GSIDE) : 4'b1111);

    // define "zones" for each shape type
    assign isRound   = ((gIdxX == 4'd0) & (gIdxY < 4'd8));
    assign isZZ      = ((gIdxX == 4'd5) & (gIdxY < 4'd8));
    assign isCredit  = ((gIdxX == 4'd5) & (gIdxY == 4'd8));
    assign isMaster  = ((gIdxX > 4'd0) & (gIdxX < 4'd5) & (gIdxY == 4'd8));
    assign isShape   = ((gIdxX > 4'd0) & (gIdxX < 4'd5) & (gIdxY < 4'd8));

    // indices/signals for drawing the shapes
    assign numValue  = (isCredit ? memNumGames : gIdxY);
    assign shapeSel  = (isMaster ? master[masterIdx] : memGuess[guessIdxY][guessIdxX]);
    assign masterIdx = (isMaster ? ~(gIdxX - 1'b1) : 2'b0);
    assign guessIdxX = (isShape  ? ~(gIdxX - 1'b1) : 2'b0);
    assign guessIdxY = (isShape  ? gIdxY : 4'b0);

    // draw the round numbers on the side, or the credit value
    drawNumber numDrawer (
            .inNum  (isNum),
            .x      (x),
            .y      (y),
            .posX   (X0 + (gIdxX * GSIDE)),
            .posY   (Y0 + (gIdxY * GSIDE)),
            .value  (numValue)
            );
    
    // draw shapes for the guess field
    drawShape shapeDrawer (
            .color  (shapeColor),
            .x      (x),
            .y      (y),
            .posX   (X0 + (gIdxX * GSIDE)),
            .posY   (Y0 + (gIdxY * GSIDE)),
            .shape  (shapeSel)
            );
    
    // draw Znarly/Zood results
    drawZnarlyZood zzDrawer (
            .color  (zzColor),
            .znarly (memZnarly[gIdxY]),
            .zood   (memZood[gIdxY]),
            .x      (x),
            .y      (y),
            .posX   (ZZ_X),
            .posY   (Y0 + (gIdxY * GSIDE))
            );

endmodule: mastermindVGA

/*****************************************************************
 *
 *                    Drawing modules
 *
 *****************************************************************/

/** BRIEF
 *  Given the position of a 42x42 px box (the upper left coordinate),
 *  draw a number specified by "value". One of the inputs will be the
 *  current (x, y) coordinate being processed, and a bit will be
 *  output according to whether that pixel is in the number's zone
 */
module drawNumber
    #(parameter LINEWIDTH = 10'd4, PADDING = 10'd10, SIDE = 10'd42) (
    output logic        inNum,
    input  logic [9:0]  x, y,
    input  logic [9:0]  posX, posY,
    input  logic [2:0]  value
    );
    
    // internal signals
    logic   [6:0] isSegX, isSegY, isSeg;

    /****************************************
     *          Output logic
     ****************************************/

    assign isSeg = (isSegX & isSegY);

    always_comb begin
        inNum = 1'b0;

        case (value)
            3'd0: begin
                if (isSeg[5:0])
                    inNum = 1'b1;
            end
            3'd1: begin
                if (isSeg[2:1])
                    inNum = 1'b1;
            end
            3'd2: begin
                if (isSeg[0] | isSeg[1] | isSeg[6] | isSeg[4] | isSeg[3])
                    inNum = 1'b1;
            end
            3'd3: begin
                if (isSeg[3:0] || isSeg[6])
                    inNum = 1'b1;
            end
            3'd4: begin
                if (isSeg[6:5] || isSeg[2:1])
                    inNum = 1'b1;
            end
            3'd5: begin
                if (isSeg[6:5] || isSeg[3:2] || isSeg[0])
                    inNum = 1'b1;
            end
            3'd6: begin
                if (isSeg[6:2] || isSeg[0])
                    inNum = 1'b1;
            end
            3'd7: begin
                if (isSeg[2:0])
                    inNum = 1'b1;
            end
        endcase
    end

    /****************************************
     *          Segment Boundary Check
     ****************************************/

    // top segment
    offset_check #(10) segCheckX0 (
            .val        (x),
            .low        (posX + PADDING),
            .delta      (SIDE - (2*PADDING)),
            .is_between (isSegX[0]));

    offset_check #(10) segCheckY0 (
            .val        (y),
            .low        (posY + PADDING),
            .delta      (LINEWIDTH),
            .is_between (isSegY[0]));

    // top right segment
    offset_check #(10) segCheckX1 (
            .val        (x),
            .low        (posX + (SIDE - PADDING) - LINEWIDTH),
            .delta      (LINEWIDTH),
            .is_between (isSegX[1]));

    offset_check #(10) segCheckY1 (
            .val        (y),
            .low        (posY + PADDING),
            .delta      ((SIDE - (PADDING*2))/2),
            .is_between (isSegY[1]));

    // bottom right segment
    offset_check #(10) segCheckX2 (
            .val        (x),
            .low        (posX + (SIDE - PADDING) - LINEWIDTH),
            .delta      (LINEWIDTH),
            .is_between (isSegX[2]));

    offset_check #(10) segCheckY2 (
            .val        (y),
            .low        (posY + PADDING + ((SIDE - (2*PADDING))/2)),
            .delta      ((SIDE - (PADDING*2))/2),
            .is_between (isSegY[2]));

    // bottom segment
    offset_check #(10) segCheckX3 (
            .val        (x),
            .low        (posX + PADDING),
            .delta      (SIDE - (2*PADDING)),
            .is_between (isSegX[3]));

    offset_check #(10) segCheckY3 (
            .val        (y),
            .low        (posY + (SIDE - PADDING) - LINEWIDTH),
            .delta      (LINEWIDTH),
            .is_between (isSegY[3]));

    // bottom left segment
    offset_check #(10) segCheckX4 (
            .val        (x),
            .low        (posX + PADDING),
            .delta      (LINEWIDTH),
            .is_between (isSegX[4]));

    offset_check #(10) segCheckY4 (
            .val        (y),
            .low        (posY + PADDING + ((SIDE - (2*PADDING))/2)),
            .delta      ((SIDE - (PADDING*2))/2),
            .is_between (isSegY[4]));

    // top left segment
    offset_check #(10) segCheckX5 (
            .val        (x),
            .low        (posX + PADDING),
            .delta      (LINEWIDTH),
            .is_between (isSegX[5]));

    offset_check #(10) segCheckY5 (
            .val        (y),
            .low        (posY + PADDING),
            .delta      ((SIDE - (PADDING*2))/2),
            .is_between (isSegY[5]));

    // middle segment
    offset_check #(10) segCheckX6 (
            .val        (x),
            .low        (posX + PADDING),
            .delta      (SIDE - (2*PADDING)),
            .is_between (isSegX[6]));

    offset_check #(10) segCheckY6 (
            .val        (y),
            .low        (posY + (SIDE/2) - LINEWIDTH/2),
            .delta      (LINEWIDTH),
            .is_between (isSegY[6]));

endmodule: drawNumber

/** BRIEF
 *  Given the position of a 42x42 px box (the upper left coordinate),
 *  draw the znarly/zood results. One of the inputs will be the
 *  current (x, y) coordinate being processed, and a color will be
 *  output according to whether that pixel is in the shape's zone.
 *
 *  Znarly is red; zood white (because I saw it on the internet)
 */
module drawZnarlyZood
    #(parameter WIDTH = 10'd26, PADDING = 10'd16) (
    output color_t        color,
    input  logic   [3:0]  znarly, zood,
    input  logic   [9:0]  x, y,
    input  logic   [9:0]  posX, posY
    );

    /****************************************
     *       Internal Signals
     ****************************************/

    logic   [3:0] inBoxX, inBoxY;

    /****************************************
     *       Boundary Checks
     ****************************************/

    // create boundaries for 4 tiny squares
    // top left
    offset_check #(10) squareCheckX0 (
            .val        (x),
            .low        (posX),
            .delta      (PADDING),
            .is_between (inBoxX[0]));

    offset_check #(10) squareCheckY0 (
            .val        (y),
            .low        (posY),
            .delta      (PADDING),
            .is_between (inBoxY[0]));

    // top right
    offset_check #(10) squareCheckX1 (
            .val        (x),
            .low        (posX + WIDTH),
            .delta      (PADDING),
            .is_between (inBoxX[1]));

    offset_check #(10) squareCheckY1 (
            .val        (y),
            .low        (posY),
            .delta      (PADDING),
            .is_between (inBoxY[1]));

    // bottom left
    offset_check #(10) squareCheckX2 (
            .val        (x),
            .low        (posX),
            .delta      (PADDING),
            .is_between (inBoxX[2]));

    offset_check #(10) squareCheckY2 (
            .val        (y),
            .low        (posY + WIDTH),
            .delta      (PADDING),
            .is_between (inBoxY[2]));

    // bottom right
    offset_check #(10) squareCheckX3 (
            .val        (x),
            .low        (posX + WIDTH),
            .delta      (PADDING),
            .is_between (inBoxX[3]));

    offset_check #(10) squareCheckY3 (
            .val        (y),
            .low        (posY + WIDTH),
            .delta      (PADDING),
            .is_between (inBoxY[3]));

    /****************************************
     *       Color Assignments
     ****************************************/

    always_comb begin
        color = BLACK;

        if (inBoxX[0] & inBoxY[0]) begin
            if (znarly > 3'd0)
                color = RED;
            else if (zood > 3'd3)
                color = WHITE;
        end
        else if (inBoxX[1] & inBoxY[1]) begin
            if (znarly > 3'd1)
                color = RED;
            else if (zood > 3'd2)
                color = WHITE;
        end
        else if (inBoxX[2] & inBoxY[2]) begin
            if (znarly > 3'd2)
                color = RED;
            else if (zood > 3'd1)
                color = WHITE;
        end
        else if (inBoxX[3] & inBoxY[3]) begin
            if (znarly > 3'd3)
                color = RED;
            else if (zood > 3'd0)
                color = WHITE;
        end
    end

endmodule: drawZnarlyZood

/** BRIEF
 *  Given the position of a 42x42 px box (the upper left coordinate),
 *  draw a shape specified by "shape". One of the inputs will be the
 *  current (x, y) coordinate being processed, and a color will be
 *  output according to whether that pixel is in the shape's zone.
 */
module drawShape
    #(parameter LINEWIDTH = 10'd15, SIDE = 10'd42) (
    output color_t        color,
    input  logic   [9:0]  x, y,
    input  logic   [9:0]  posX, posY,
    input  logic   [2:0]  shape
    );

    /****************************************
     *       Internal Signals
     ****************************************/

    color_t shapeColor;
    shape_t shapeType;
    logic   inBoxX, inBoxY;
    logic   inTopStick, inBottomStick, inLeftStick, inRightStick;

    /****************************************
     *       Boundary Checks
     ****************************************/

    // create square boundaries
    offset_check #(10) squareCheckX (
            .val        (x),
            .low        (posX),
            .delta      (SIDE),
            .is_between (inBoxX));

    offset_check #(10) squareCheckY (
            .val        (y),
            .low        (posY),
            .delta      (SIDE),
            .is_between (inBoxY));

    // create a top border inside the box
    offset_check #(10) topStick (
            .val        (y),
            .low        (posY),
            .delta      (LINEWIDTH),
            .is_between (inTopStick));

    // create a bottom border inside the box
    offset_check #(10) bottomStick (
            .val        (y),
            .low        (posY + SIDE - LINEWIDTH),
            .delta      (LINEWIDTH),
            .is_between (inBottomStick));

    // create a left border inside the box
    offset_check #(10) leftStick (
            .val        (x),
            .low        (posX),
            .delta      (LINEWIDTH),
            .is_between (inLeftStick));

    // create a right border inside the box
    offset_check #(10) rightStick (
            .val        (x),
            .low        (posX + SIDE - LINEWIDTH),
            .delta      (LINEWIDTH),
            .is_between (inRightStick));

    /****************************************
     *       Final Output logic
     ****************************************/

    assign color = shapeColor;
    assign shapeType = shape_t'(shape);

    always_comb begin
        shapeColor = BLACK;

        if (inBoxX & inBoxY) begin
            if ((shapeType == WALL) & (inLeftStick | inRightStick)) begin
                shapeColor = RED;
            end
            else if ((shapeType == LEFTTOP) & (inLeftStick | inTopStick)) begin
                shapeColor = BLUE;
            end
            else if ((shapeType == RIGHTTOP) & (inRightStick | inTopStick)) begin
                shapeColor = CYAN;
            end
            else if ((shapeType == RIGHTBOT) & (inRightStick | inBottomStick)) begin
                shapeColor = GREEN;
            end
            else if ((shapeType == LEFTBOT) & (inLeftStick | inBottomStick)) begin
                shapeColor = YELLOW;
            end
            else if ((shapeType == EQUAL) & (inBottomStick | inTopStick)) begin
                shapeColor = PURPLE;
            end
        end
    end
endmodule: drawShape

/*****************************************************************
 *
 *                    VGA Magic
 *
 *****************************************************************/

/** BRIEF
 *  VGA module that outputs the current hsync and vsync values needed
 *  to display content. Does not handle the actual color content.
 *
 *  Requires the Library.sv modules to work. Supports 640 x 480 px.
 */
module vga (
    output logic [9:0] row, col,
    output logic       HS, VS, blank,
    input  logic       CLOCK_50, reset
    );

    logic [10:0] col_count;
    logic        col_clear, col_enable;
    logic [9:0]  row_count;
    logic        row_clear, row_enable;
    logic        h_blank, v_blank;
   
    // Row counter counts from 0 to 520   
    //     count of   0 - 479 is display time (thus row_count is correct here)
    //     count of 480 - 489 is front porch
    //     count of 490 - 491 is VS=0 pulse width
    //     count of 492 - 520 is back porch

    simple_counter #(10) row_counter(
            .Q      (row_count), 
            .en     (row_enable), 
            .clr    (row_clear),
            .clk    (CLOCK_50),
            .reset  (reset)
            );

    assign row        = row_count;
    assign row_clear  = (row_count >= 10'd520);
    assign row_enable = (col_count == 11'd1599);
    assign VS         = (row_count < 10'd490) | (row_count > 10'd491);
    assign v_blank    = (row_count >= 10'd480);

    // Col counter counts from 0 to 1599
    //     count of    0 - 1279 is display time (col is div by 2)
    //     count of 1280 - 1311 is front porch
    //     count of 1312 - 1503 is HS=0 pulse width
    //     count of 1504 - 1599 is back porch
    
    simple_counter #(11) col_counter(
            .Q      (col_count), 
            .en     (col_enable), 
            .clr    (col_clear),
            .clk    (CLOCK_50),
            .reset  (reset)
            );

    assign col        = col_count[10:1];
    assign col_clear  = (col_count >= 11'd1599);
    assign col_enable = 1'b1;
    assign HS         = (col_count < 11'd1312) | (col_count > 11'd1503);
    assign h_blank    = col_count > 11'd1279;

    assign blank      = h_blank | v_blank;
endmodule: vga

/*****************************************************************
 *
 *                    Library modules
 *
 *****************************************************************/

/** BRIEF
 *  Outputs whether a value lies between [low, high].
 */
module range_check
    #(parameter WIDTH = 4'd10) (
    input  logic [WIDTH-1:0] val, low, high,
    output logic             is_between
    );

    assign is_between = (val >= low) & (val <= high);

endmodule: range_check

/** BRIEF
 *  Outputs whether a value lies between [low, low + delta].
 */
module offset_check
    #(parameter WIDTH = 4'd10) (
    input  logic [WIDTH-1:0] val, low, delta,
    output logic             is_between
    );

    assign is_between = ((val >= low) & (val < (low+delta)));

endmodule: offset_check

/** BRIEF
 *  Simple up counter with synchronous clear and enable.
 *  Clear takes precedence over enable.
 */
module simple_counter
    #(parameter WIDTH = 4'd8) (
    output logic [WIDTH-1:0] Q,
    input  logic             clk, en, clr, reset
    );

    always_ff @(posedge clk, posedge reset)
        if (reset)
            Q <= 'b0;
        else if (clr)
            Q <= 'b0;
        else if (en)
            Q <= (Q + 1'b1);

endmodule: simple_counter

/** BRIEF
 *  A register with synchronous clear. Clear takes precedence.
 */
module registerAZ
    #(parameter WIDTH = 4'd8) (
    output logic [WIDTH-1:0] Q,
    input  logic [WIDTH-1:0] D,
    input  logic             clk, en, clr, reset
    );

    always_ff @(posedge clk, posedge reset) begin
        if (reset)
            Q <= 'b0;
        else if (clr)
            Q <= 'b0;
        else if (en)
            Q <= D;
    end
endmodule: registerAZ
