----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:19:05 08/08/2014 
-- Design Name: 
-- Module Name:    inv - arch_inv 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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

