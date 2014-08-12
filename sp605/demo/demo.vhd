library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demo is
    Port ( button : in     STD_LOGIC_VECTOR (3 downto 0);
           dip_sw : in     STD_LOGIC_VECTOR (3 downto 0);
           led    : out    STD_LOGIC_VECTOR (3 downto 0);
           clk    : in     STD_LOGIC;                            -- 27 MHz User Clock
           reset  : in     STD_LOGIC;
           header : inout  STD_LOGIC_VECTOR (3 downto 0));
end demo;

architecture structure of demo is

    component clk_div
    port (reset, clkin : in  STD_LOGIC;
          clkout       : out STD_LOGIC);
    end component;

    component inv
    port (a       : in  STD_LOGIC;
          x, xinv : out STD_LOGIC);
    end component;

    component blink
    port (en, clk : in  STD_LOGIC;
          led     : out STD_LOGIC);
    end component;

    signal clk_2hz : STD_LOGIC;
    signal cnt     : integer;

begin

--    led(0) <= button(0) xor button(1);
--    led(1) <= not button(0);

    DIVIDER : clk_div
    port map (reset => reset, clkin => clk, clkout => clk_2hz);

    INVERTER : inv
    port map (a => button(0), x => led(0), xinv => led(1));

    BLINKER : blink
    port map (en => dip_sw(0), clk => clk_2hz, led => led(2));

    led(3) <= button(0) and button(1) and button(2) and button(3) and 
              dip_sw(0) and dip_sw(1) and dip_sw(2) and dip_sw(3) and 
              clk and reset and
              header(0) and header(1) and header(2) and header(3);

end structure;

