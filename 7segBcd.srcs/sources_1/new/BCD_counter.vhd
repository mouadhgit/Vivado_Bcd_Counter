library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use ieee.std_logic_unsigned.all;

entity BCD_counter is
port ( clk: in std_logic;
       s: out std_logic_vector(3 downto 0));
end BCD_counter;

architecture bhv of BCD_counter is
signal s0: std_logic_vector(3 downto 0):= "0000"; 
begin

process(clk)
begin
    if(rising_edge(clk)) then
        s0<=s0+1;
        if(s0="1010") then
            s0<="0000";
        end if; 
    end if;
s <= s0;
end process; 
end bhv;