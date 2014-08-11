----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:09:30 08/11/2014 
-- Design Name: 
-- Module Name:    demo - behavioral 
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

entity demo is
    Port ( button : in  STD_LOGIC_VECTOR (3 downto 0);
           dip_sw : in  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;                            -- 27 MHz User Clock
           reset : in  STD_LOGIC;
           header : inout  STD_LOGIC_VECTOR (3 downto 0));
end demo;

architecture behavioral of demo is

begin

led(0) <= button(0);
led(1) <= not button(0);

led(2) <= button(0) and button(1) and button(2) and button(3) and 
          dip_sw(0) and dip_sw(1) and dip_sw(2) and dip_sw(3) and 
          clk and reset;
led(3) <= header(0) and header(1) and header(2) and header(3);

end behavioral;

