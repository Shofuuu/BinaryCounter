-- Divider clock for 50MHz external crystal to 1Hz

library ieee;
use ieee.std_logic_1164.all;

entity ClockDivider is
  port (
    clkout        : out std_logic;
    clkin, reset  : in std_logic
  );
end ClockDivider;

architecture Behavioral of ClockDivider is

  -- local variable
  -- cara kerja :
  -- jika counter menghitung sampai 50000000x
  -- maka akan membalik output dari counter 1->0 0->1
  signal count: integer := 1;
  signal rst: std_logic := '0'; -- rst sebagai clock set reset 0/1

begin

  process(clkin, reset)
  begin

    if(reset = '1') then
      count <= 1;
      rst <= '0';
    elsif(clkin'event and clkin = '1') then
      if(count = 50000000) then
        count <= 1;
        rst <= not rst;
      end if;

      count <= count+1;
    end if;

    clkout <= rst;

  end process;

end Behavioral;
