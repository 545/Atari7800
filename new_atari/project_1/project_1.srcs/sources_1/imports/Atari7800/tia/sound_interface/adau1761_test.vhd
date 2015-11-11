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
           aud_signal : in  STD_LOGIC_VECTOR(15 downto 0)
           );
end adau1761_test;

architecture Behavioral of adau1761_test is

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


   signal clk_48     : std_logic;
   signal new_sample : std_logic;
   -- signal AUD_SIGNAL : std_logic_vector(15 downto 0); -- Already declared
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

   -- extend the line in sample to 21 bits.
   line_in_l_extended <= line_in_l(hi) & line_in_l(hi) & line_in_l(hi) & line_in_l(hi) & line_in_l(hi) & line_in_l;
   line_in_r_extended <= line_in_r(hi) & line_in_r(hi) & line_in_r(hi) & line_in_r(hi) & line_in_r(hi) & line_in_r;

   -- source the files


    -- choose the output, and adjust for filter gain
      hphone_l <= aud_signal;
      hphone_r <= aud_signal;

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