library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blink is
    Port ( en  : in   STD_LOGIC;
           clk : in   STD_LOGIC;
           led : out  STD_LOGIC);
end blink;

architecture behavioral of blink is

signal led_tmp : STD_LOGIC;

begin

    BLINK : process(en,clk,led_tmp)
    begin
        if clk = '1' and clk'event then
            if en = '0' then
                led_tmp <= '0';
            else
                led_tmp <= not led_tmp;
            end if;
        else
            led_tmp <= led_tmp;
        end if;
    end process;
    led <= led_tmp;

end behavioral;

