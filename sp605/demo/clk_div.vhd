library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div is
    Port ( reset  : in   STD_LOGIC;
           clkin  : in   STD_LOGIC;
           clkout : out  STD_LOGIC);
end clk_div;

architecture behavioral of clk_div is

    constant CLK_PERIOD : integer := 27*10**6/2;
    signal cnt : integer := CLK_PERIOD;

begin

    CLKDIV : process (clkin,reset)
    begin
        if reset = '1' then
            cnt <= CLK_PERIOD;
            clkout <= '0';
        elsif clkin = '1' and clkin'event then
            if cnt = 0 then
                clkout <= '1';
                cnt <= CLK_PERIOD;
            else
                clkout <= '0';
                cnt <= cnt - 1;
            end if;
        end if;
    end process;

end behavioral;

