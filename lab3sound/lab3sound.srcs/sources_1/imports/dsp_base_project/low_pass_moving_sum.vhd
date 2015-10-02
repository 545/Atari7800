------------------------------------------------------
-- low_pass : A generic DSP low pass filter.
--
-- It is a moving sum, as it doesn't divide by the 
-- number of samples. Make sure that data_width is wide 
-- enough that no overflows occur - you might have to 
-- add leading zeros to sample_in!
--
-- PS. Also note that sample_in is unsigned.
--
-- Author : Mike Field <hamster@snap.net.nz>
--
------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity low_pass_moving_sum is
    generic ( data_width   : natural := 16;
              window_width : natural := 5);
    Port ( clk        : in  STD_LOGIC;
           enable     : in STD_LOGIC;
           sample_in  : in  STD_LOGIC_VECTOR (data_width-1 downto 0);
           sample_out : out  STD_LOGIC_VECTOR (data_width-1 downto 0));
end low_pass_moving_sum;

architecture Behavioral of low_pass_moving_sum is
   signal total : unsigned( data_width-1 downto 0) := (others =>'0');
   signal end_sample : STD_LOGIC_VECTOR ( data_width-1 downto 0);
   signal delay_line : STD_LOGIC_VECTOR (window_width * data_width-1 downto 0) := (others => '0');  
begin
   end_sample <= Delay_line(Delay_line'high downto Delay_line'high-data_width+1);
   sample_out <= std_logic_vector(total);   
   
process(clk)
  begin
    if rising_edge(clk) then
      if enable = '1' then
         total      <= total + unsigned(sample_in) - unsigned(end_sample);      
         delay_line <= Delay_line(Delay_line'high-data_width downto 0) & sample_in;
      end if;
    end if;
  end process;
end Behavioral;

