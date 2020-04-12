library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_vhdl is
  port(
    clk : in STD_LOGIC;
    led   : out STD_LOGIC_VECTOR (7 to 0)
  );
end top_vhdl;

architecture Behavioral of top_vhdl is
  component ClockDivider is
    port(
      clkin, rst  : in STD_LOGIC;
      clkout      : out STD_LOGIC
    );
  end component;
begin

  bin_counter : ClockDivider port map(
    clkin => clk;
    rst => '1';
    clkout => clk
  );

end Behavioral;
