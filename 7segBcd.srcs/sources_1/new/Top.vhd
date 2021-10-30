library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top is
    Port ( clk : in  STD_LOGIC;
           outseg: out std_logic_vector(6 downto 0));
end Top;

architecture struct of Top is

component frq_div is
port ( clk: in std_logic;
       clock_out: out std_logic);
end component;

component BCD_counter is
port ( clk: in std_logic;
       s: out std_logic_vector(3 downto 0));
end component;

component decoder is
Port ( BCDin : in STD_LOGIC_VECTOR (3 downto 0);
Seven_Segment : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal x1: std_logic;
signal x2: std_logic_vector(3 downto 0);

begin
freqdiv: frq_div port map(clk,x1);
counter: BCD_counter port map(x1,x2);
diplay:  decoder port map(x2,outseg);
end struct;