----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Create Date:    19:23:40 01/06/2014 
-- Module Name:    adau1761_test - Behavioral 
-- Description:  Implement a Line in => I2S => FPGA => I2S => Headphones 
--               using the ADAU1761 codec
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


library unisim;
use unisim.vcomponents.all;

entity adau1761_test is
    Port ( clk_100  : in    STD_LOGIC;
           AC_ADR0  : out   STD_LOGIC;
           AC_ADR1  : out   STD_LOGIC;
           AC_GPIO0 : out   STD_LOGIC;  -- I2S MISO
           AC_GPIO1 : in    STD_LOGIC;  -- I2S MOSI
           AC_GPIO2 : in    STD_LOGIC;  -- I2S_bclk
           AC_GPIO3 : in    STD_LOGIC;  -- I2S_LR
           AC_MCLK  : out   STD_LOGIC;
           AC_SCK   : out   STD_LOGIC;
           AC_SDA   : inout STD_LOGIC;
           sw       : in    STD_LOGIC_VECTOR(7 downto 0);
           pb       : in    STD_LOGIC
           );
end adau1761_test;

architecture Behavioral of adau1761_test is

	COMPONENT low_pass_moving_sum
   GENERIC(
      data_width : natural;
      window_width : natural
   );
   PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		sample_in : IN std_logic_vector(data_width-1 downto 0);          
		sample_out : OUT std_logic_vector(data_width-1 downto 0)
		);
	END COMPONENT;


	COMPONENT dsp_block
	PORT(
		clk        : IN std_logic;
		new_sample : IN std_logic;
		in_l       : IN std_logic_vector(20 downto 0);
		in_r       : IN std_logic_vector(20 downto 0);          
		out_l      : OUT std_logic_vector(20 downto 0);
		out_r      : OUT std_logic_vector(20 downto 0)
		);
	END COMPONENT;

	COMPONENT adau1761_izedboard
	PORT(
		clk_48 : IN std_logic;
		AC_GPIO1 : IN std_logic;
		AC_GPIO2 : IN std_logic;
		AC_GPIO3 : IN std_logic;
		hphone_l : IN std_logic_vector(15 downto 0);
		hphone_r : IN std_logic_vector(15 downto 0);    
		AC_SDA : INOUT std_logic;      
		AC_ADR0 : OUT std_logic;
		AC_ADR1 : OUT std_logic;
		AC_GPIO0 : OUT std_logic;
		AC_MCLK : OUT std_logic;
		AC_SCK : OUT std_logic;
		line_in_l : OUT std_logic_vector(15 downto 0);
		line_in_r : OUT std_logic_vector(15 downto 0);
      new_sample: out   std_logic
		);
	END COMPONENT;

   component clocking
   port(
      CLK_100           : in     std_logic;
      CLK_48            : out    std_logic;
      RESET             : in     std_logic;
      LOCKED            : out    std_logic
      );
   end component;
   
    component audio
    port(
      CLK_30            : in     std_logic;
      AUD0              : out    std_logic;
      AUD1              : out    std_logic;
      AUDC0             : in     std_logic_vector(3 downto 0);
      AUDC1             : in     std_logic_vector(3 downto 0);
      AUDF0             : in     std_logic_vector(4 downto 0);
      AUDF1             : in     std_logic_vector(4 downto 0)
      );
    end component;
      
   component audio_xformer
   port(
     AUD0              : in    std_logic;
     AUD1              : in    std_logic;
     AUDV0             : in    std_logic_vector(3 downto 0);
     AUDV1             : in    std_logic_vector(3 downto 0);
     AUD_SIGNAL        : out   std_logic_vector(15 downto 0)
     );
   end component; 
  
   
   signal clk_48     : std_logic;
   signal clk_30     : std_logic;
   signal AUD0       : std_logic;
   signal AUD1       : std_logic;
   signal new_sample : std_logic;
   signal AUDV0      : std_logic_vector(3 downto 0);
   signal AUDV1      : std_logic_vector(3 downto 0);
   signal AUDC0      : std_logic_vector(3 downto 0);
   signal AUDC1      : std_logic_vector(3 downto 0);
   signal AUDF0      : std_logic_vector(4 downto 0);
   signal AUDF1      : std_logic_vector(4 downto 0);
   signal AUD_SIGNAL : std_logic_vector(15 downto 0);
   signal line_in_l  : std_logic_vector(15 downto 0);
   signal line_in_r  : std_logic_vector(15 downto 0);
   signal hphone_l   : std_logic_vector(15 downto 0);
   signal hphone_r   : std_logic_vector(15 downto 0);  
   signal count      : unsigned(15 downto 0) := "0000000000000000";  

   signal filter0_l  : std_logic_vector(20 downto 0);
   signal filter0_r  : std_logic_vector(20 downto 0);

   signal line_in_l_extended  : std_logic_vector(20 downto 0);
   signal line_in_r_extended  : std_logic_vector(20 downto 0);
   constant hi : natural := 15;
begin
   
process(clk_48)
   begin
      if rising_edge(clk_48) then
         if (count = 764) then
            CLK_30 <= '1';      
            count <= count + 1;
         elsif (count = 1528) then
            CLK_30 <= '0';
            count <= "0000000000000000";
         else
            count <= count + 1;
         end if;
         if (pb = '1') then
             if (sw(5) = '1') then
                AUDC0 <= sw(3 downto 0);
             elsif (sw(6) = '1') then
                AUDV0 <= sw(3 downto 0);
             elsif (sw(7) = '1') then
                AUDF0 <= sw(4 downto 0);
             end if;
         else
            if (sw(5) = '1') then
                AUDC1 <= sw(3 downto 0);
            elsif (sw(6) = '1') then
                AUDV1 <= sw(3 downto 0);
                       
            elsif (sw(7) = '1') then
                AUDF1 <= sw(4 downto 0);
            end if;
         end if;
      end if;   
   end process;
      
   -- extend the line in sample to 21 bits.
   line_in_l_extended <= line_in_l(hi) & line_in_l(hi) & line_in_l(hi) & line_in_l(hi) & line_in_l(hi) & line_in_l;
   line_in_r_extended <= line_in_r(hi) & line_in_r(hi) & line_in_r(hi) & line_in_r(hi) & line_in_r(hi) & line_in_r;

   -- source the files
   audio_src: audio port map(CLK_30 => clk_30, AUD0 => AUD0, AUD1 => AUD1, AUDC0 => AUDC0, AUDC1 => AUDC1, AUDF0 => AUDF0, AUDF1 => AUDF1);
   audio_xform: audio_xformer port map(AUD0 => AUD0, AUD1 => AUD1, AUDV0 => AUDV0, AUDV1 => AUDV1, AUD_SIGNAL => AUD_SIGNAL);
   

    -- choose the output, and adjust for filter gain
      hphone_l <= AUD_SIGNAL;
      hphone_r <= AUD_SIGNAL;
                                 
i_clocking : clocking port map (
      CLK_100 => CLK_100,
      CLK_48  => CLK_48,
      RESET   => '0',
      LOCKED  => open
   );

Inst_adau1761_izedboard: adau1761_izedboard PORT MAP(
		clk_48     => clk_48,
		AC_ADR0    => AC_ADR0,
		AC_ADR1    => AC_ADR1,
		AC_GPIO0   => AC_GPIO0,
		AC_GPIO1   => AC_GPIO1,
		AC_GPIO2   => AC_GPIO2,
		AC_GPIO3   => AC_GPIO3,
		AC_MCLK    => AC_MCLK,
		AC_SCK     => AC_SCK,
		AC_SDA     => AC_SDA,
		hphone_l   => hphone_l,
		hphone_r   => hphone_r,
		line_in_l  => line_in_l,
		line_in_r  => line_in_r,
      new_sample => new_sample
	);

	Inst_dsp_block: dsp_block PORT MAP(
		clk        => clk_48,
		new_sample => new_sample,
		in_l       => line_in_l_extended,
		in_r       => line_in_r_extended,
		out_l      => filter0_l,
		out_r      => filter0_r
	);
   
end Behavioral;