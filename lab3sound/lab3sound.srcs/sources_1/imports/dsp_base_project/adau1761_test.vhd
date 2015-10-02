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
           sw       : in    STD_LOGIC_VECTOR(7 downto 0)
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
   
   component file_gen
   port(
    clk                 : in     std_logic;
    sample_out          : out    STD_LOGIC_VECTOR(15 downto 0);
    sel                 : in     STD_LOGIC
   );
   end component;
   
   signal clk_48     : std_logic;
   signal new_sample : std_logic;
   signal line_in_l  : std_logic_vector(15 downto 0);
   signal line_in_r  : std_logic_vector(15 downto 0);
   signal hphone_l   : std_logic_vector(15 downto 0);
   signal hphone_r   : std_logic_vector(15 downto 0);    

   signal filter0_l  : std_logic_vector(20 downto 0);
   signal filter0_r  : std_logic_vector(20 downto 0);

   signal filter1_l  : std_logic_vector(20 downto 0);
   signal filter1_r  : std_logic_vector(20 downto 0);
   
   signal filter2_l  : std_logic_vector(20 downto 0);
   signal filter2_r  : std_logic_vector(20 downto 0);

   signal filter3_l  : std_logic_vector(20 downto 0);
   signal filter3_r  : std_logic_vector(20 downto 0);

   signal aud_file : std_logic_vector(15 downto 0);

   signal line_in_l_extended  : std_logic_vector(20 downto 0);
   signal line_in_r_extended  : std_logic_vector(20 downto 0);
   signal sw_synced : std_logic_vector(7 downto 0);
   constant hi : natural := 15;
begin
process(clk_48)
   begin
      if rising_edge(clk_48) then
         sw_synced <= sw;
      end if;
   end process;
      
   -- extend the line in sample to 21 bits.
   line_in_l_extended <= line_in_l(hi) & line_in_l(hi) & line_in_l(hi) & line_in_l(hi) & line_in_l(hi) & line_in_l;
   line_in_r_extended <= line_in_r(hi) & line_in_r(hi) & line_in_r(hi) & line_in_r(hi) & line_in_r(hi) & line_in_r;

   -- source the files
   file_src: file_gen PORT MAP(clk => clk_48, sample_out => aud_file, sel => sw(0));

   -- filter the extended samples
lpms1_l: low_pass_moving_sum GENERIC MAP(data_width => 21, window_width =>  8) PORT MAP(clk => clk_48,	enable => new_sample, sample_in => line_in_l_extended, sample_out => filter1_l);
lpms1_r: low_pass_moving_sum GENERIC MAP(data_width => 21, window_width =>  8) PORT MAP(clk => clk_48,	enable => new_sample, sample_in => line_in_r_extended, sample_out => filter1_r);
lpms2_l: low_pass_moving_sum GENERIC MAP(data_width => 21, window_width => 16) PORT MAP(clk => clk_48,	enable => new_sample, sample_in => line_in_l_extended, sample_out => filter2_l);
lpms2_r: low_pass_moving_sum GENERIC MAP(data_width => 21, window_width => 16) PORT MAP(clk => clk_48,	enable => new_sample, sample_in => line_in_r_extended, sample_out => filter2_r);
lpms3_l: low_pass_moving_sum GENERIC MAP(data_width => 21, window_width => 32) PORT MAP(clk => clk_48,	enable => new_sample, sample_in => line_in_l_extended, sample_out => filter3_l);
lpms3_r: low_pass_moving_sum GENERIC MAP(data_width => 21, window_width => 32) PORT MAP(clk => clk_48,	enable => new_sample, sample_in => line_in_r_extended, sample_out => filter3_r);

    -- choose the output, and adjust for filter gain
      hphone_l <= aud_file;
      hphone_r <= hphone_l;
                                 
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