library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

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
  signal clk_out : std_logic := '0';
  signal counter : std_logic_vector (7 downto 0);

begin

  bin_counter : ClockDivider port map(clk_out, clk, rst);
  process(clk_out, rst)
  begin
    if (rst = '1') then
      counter <= "00000000"; -- double quote untuk vector
    elsif (clk_out'event and clk_out = '1') then
      counter <= counter + 1;
      led <= not counter;
    end if;
  end process;

end architecture;
