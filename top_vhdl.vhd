library ieee;
use ieee.std_logic_1164.all;

entity top_vhdl is
  port(
    led         : out std_logic (7 to 0);
    clk, rst    : in std_logic
  );
end top_vhdl;

architecture Behavioral of top_vhdl is

  component ClockDivider is
    port (
      clkout        : out std_logic;
      clkin, reset  : in std_logic
    );
  end component;

  signal clk_out : std_logic;

begin

  bin_count : ClockDivider port map(clk_out, clk, rst);

end Behavioral;
