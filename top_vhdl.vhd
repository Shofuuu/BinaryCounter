library ieee;
use ieee.std_logic_1164.all;

entity top_vhdl is
  port(
    led         : out std_logic (7 to 0);
    clk, rst    : in std_logic
  );
end top_vhdl;

architecture Behavioral of top_vhdl is

  signal clkout : std_logic := '1';

begin

  bin_count : entity work.ClockDivider(Behavioral) port map(
    clkin   => clk,
    reset   => rst,
    clkout  => clkout
  );

end Behavioral;
