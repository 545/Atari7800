-- VHDL Entity R6502_TC.RegBank_AXY.symbol
--
-- Created:
--          by - eda.UNKNOWN (ENTWICKL4-XP-PR)
--          at - 22:42:53 04.01.2009
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2007.1a (Build 13)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity RegBank_AXY is
   port( 
      clk_clk_i    : in     std_logic;
      d_regs_in_i  : in     std_logic_vector (7 downto 0);
      load_regs_i  : in     std_logic;
      rst_rst_n_i  : in     std_logic;
      sel_rb_in_i  : in     std_logic_vector (1 downto 0);
      sel_rb_out_i : in     std_logic_vector (1 downto 0);
      sel_reg_i    : in     std_logic_vector (1 downto 0);
      d_regs_out_o : out    std_logic_vector (7 downto 0);
      q_a_o        : out    std_logic_vector (7 downto 0);
      q_x_o        : out    std_logic_vector (7 downto 0);
      q_y_o        : out    std_logic_vector (7 downto 0)
   );

-- Declarations

end RegBank_AXY ;

-- Jens-D. Gutschmidt     Project:  R6502_TC  
-- scantara2003@yahoo.de                      
-- COPYRIGHT (C) 2008 by Jens Gutschmidt and OPENCORES.ORG                                                                                     
--                                                                                                                                             
-- This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by   
-- the Free Software Foundation, either version 3 of the License, or any later version.                                                        
--                                                                                                                                             
-- This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of              
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.                                  
--                                                                                                                                             
-- You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.     
--                                                                                                                                             
-- CVS Revisins History                                                                                                                        
--                                                                                                                                             
-- $Log: not supported by cvs2svn $                                                                                                                         
--   <<-- more -->>                                                                                                                            
-- Title:  Register Bank for register A, X and Y  
-- Path:  R6502_TC/RegBank_AXY/struct  
-- Edited:  by eda on 02 Jan 2009  
--
-- VHDL Architecture R6502_TC.RegBank_AXY.struct
--
-- Created:
--          by - eda.UNKNOWN (ENTWICKL4-XP-PR)
--          at - 22:42:53 04.01.2009
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2007.1a (Build 13)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


architecture struct of RegBank_AXY is

   -- Architecture declarations

   -- Internal signal declarations
   signal ld        : std_logic_vector(2 downto 0);
   signal load1_o_i : std_logic;
   signal load2_o_i : std_logic;
   signal load_o_i  : std_logic;
   signal q_mux_o_i : std_logic_vector(7 downto 0);
   signal val_zero  : std_logic_vector(7 downto 0);

   -- Implicit buffer signal declarations
   signal q_a_o_internal : std_logic_vector (7 downto 0);
   signal q_x_o_internal : std_logic_vector (7 downto 0);
   signal q_y_o_internal : std_logic_vector (7 downto 0);


   -- ModuleWare signal declarations(v1.9) for instance 'U_0' of 'adff'
   signal mw_U_0reg_cval : std_logic_vector(7 downto 0);

   -- ModuleWare signal declarations(v1.9) for instance 'U_4' of 'adff'
   signal mw_U_4reg_cval : std_logic_vector(7 downto 0);

   -- ModuleWare signal declarations(v1.9) for instance 'U_5' of 'adff'
   signal mw_U_5reg_cval : std_logic_vector(7 downto 0);


begin

   -- ModuleWare code(v1.9) for instance 'U_0' of 'adff'
   q_a_o_internal <= mw_U_0reg_cval;
   u_0seq_proc: process (clk_clk_i, rst_rst_n_i)
   begin
      if (rst_rst_n_i = '0') then
         mw_U_0reg_cval <= "00000000";
      elsif (clk_clk_i'event and clk_clk_i='1') then
         if (load_o_i = '1') then
            mw_U_0reg_cval <= q_mux_o_i;
         end if;
      end if;
   end process u_0seq_proc;

   -- ModuleWare code(v1.9) for instance 'U_4' of 'adff'
   q_x_o_internal <= mw_U_4reg_cval;
   u_4seq_proc: process (clk_clk_i, rst_rst_n_i)
   begin
      if (rst_rst_n_i = '0') then
         mw_U_4reg_cval <= "00000000";
      elsif (clk_clk_i'event and clk_clk_i='1') then
         if (load1_o_i = '1') then
            mw_U_4reg_cval <= q_mux_o_i;
         end if;
      end if;
   end process u_4seq_proc;

   -- ModuleWare code(v1.9) for instance 'U_5' of 'adff'
   q_y_o_internal <= mw_U_5reg_cval;
   u_5seq_proc: process (clk_clk_i, rst_rst_n_i)
   begin
      if (rst_rst_n_i = '0') then
         mw_U_5reg_cval <= "00000000";
      elsif (clk_clk_i'event and clk_clk_i='1') then
         if (load2_o_i = '1') then
            mw_U_5reg_cval <= q_mux_o_i;
         end if;
      end if;
   end process u_5seq_proc;

   -- ModuleWare code(v1.9) for instance 'U_6' of 'and'
   load_o_i <= load_regs_i and ld(0);

   -- ModuleWare code(v1.9) for instance 'U_7' of 'and'
   load1_o_i <= load_regs_i and ld(1);

   -- ModuleWare code(v1.9) for instance 'U_8' of 'and'
   load2_o_i <= load_regs_i and ld(2);

   -- ModuleWare code(v1.9) for instance 'U_11' of 'constval'
   val_zero <= "00000000";

   -- ModuleWare code(v1.9) for instance 'U_1' of 'decoder1'
   u_1combo_proc: process (sel_reg_i)
   begin
      ld <= (others => '0');
      case sel_reg_i is
         when "00" => ld(0) <= '1';
         when "01" => ld(1) <= '1';
         when "10" => ld(2) <= '1';
         when others => ld <= (others => '0');
      end case;
   end process u_1combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_2' of 'mux'
   u_2combo_proc: process(q_a_o_internal, q_x_o_internal, q_y_o_internal, 
                          val_zero, sel_rb_out_i)
   begin
      case sel_rb_out_i is
      when "00" => d_regs_out_o <= q_a_o_internal;
      when "01" => d_regs_out_o <= q_x_o_internal;
      when "10" => d_regs_out_o <= q_y_o_internal;
      when "11" => d_regs_out_o <= val_zero;
      when others => d_regs_out_o <= (others => 'X');
      end case;
   end process u_2combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_3' of 'mux'
   u_3combo_proc: process(q_a_o_internal, q_y_o_internal, q_x_o_internal, 
                          d_regs_in_i, sel_rb_in_i)
   begin
      case sel_rb_in_i is
      when "00" => q_mux_o_i <= q_a_o_internal;
      when "01" => q_mux_o_i <= q_y_o_internal;
      when "10" => q_mux_o_i <= q_x_o_internal;
      when "11" => q_mux_o_i <= d_regs_in_i;
      when others => q_mux_o_i <= (others => 'X');
      end case;
   end process u_3combo_proc;

   -- Instance port mappings.

   -- Implicit buffered output assignments
   q_a_o <= q_a_o_internal;
   q_x_o <= q_x_o_internal;
   q_y_o <= q_y_o_internal;

end struct;
