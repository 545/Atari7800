----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Module Name:   dsp_block - Behavioral 
-- Description:   Where you can put your own processing of the audio stream 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dsp_block is
    Port ( clk        : in  STD_LOGIC;
           new_sample : in  STD_LOGIC;
           in_l       : in  STD_LOGIC_VECTOR (20 downto 0);
           in_r       : in  STD_LOGIC_VECTOR (20 downto 0);
           out_l      : out STD_LOGIC_VECTOR (20 downto 0);
           out_r      : out STD_LOGIC_VECTOR (20 downto 0));
end dsp_block;

architecture Behavioral of dsp_block is

begin
   out_r <= in_r;
   out_l <= in_l;
end Behavioral;

