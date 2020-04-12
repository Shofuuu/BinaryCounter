library ieee;
use ieee.std_logic_1164.all;

entity top_vhdl is
  port(
    led       : out std_logic_vector (7 downto 0);
    clk, rst  : in std_logic
  );
end entity;

architecture RTL of top_vhdl is

  component ClockDivider
  port(
    clkout        : out std_logic;
    clkin, reset  : in std_logic
  );
  end component;
  signal clk_out : std_logic;
  signal counter : integer := 1;

begin

  bin_counter : ClockDivider port map(clk_out, clk, rst);
  led(0) <= clk_out;

end architecture;
