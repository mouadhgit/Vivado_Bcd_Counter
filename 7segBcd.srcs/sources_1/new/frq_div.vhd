library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity frq_div is
port ( clk: in std_logic;
       clock_out: out std_logic);
end frq_div;
  
architecture bhv of frq_div is
  
signal count: natural range 0 to 100000000 := 0;
signal tmp : std_logic := '0';
  
begin
  
process(clk)
begin
    tmp<='0';
    if(rising_edge(clk)) then
        count <=count+1;
        if (count >= 100000000) then
            tmp <= NOT tmp;
            count <= 0;
        end if;
    end if;
clock_out <= tmp;
end process; 
end bhv;