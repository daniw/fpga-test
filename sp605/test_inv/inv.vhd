library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inv is
    Port ( a : in  STD_LOGIC;
           x : out  STD_LOGIC;
           xinv : out  STD_LOGIC);
end inv;

architecture arch_inv of inv is

begin

x <= a;
xinv <= not a;

end arch_inv;

