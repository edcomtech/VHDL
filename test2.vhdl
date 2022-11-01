library ieee;
use ieee.std_logic_1164.all;

entity vhascometo is
port(
-- inputs
a, b, c, d, f, motor: in std_logic;
-- outputs
segments : out std_logic_vector (7 downto 0);
display : out std_logic_vector (3 downto 0)
);
end vhascometo;

architecture beh1 of vhascometo is
begin
-- tank
process (a,b,c,d,f,motor)
begin if  (a='0' and b='1' and c='1' and d='1') then f<='1';
else f<='0';
end if;
-- mux
signal x,y,z : std_logic_vector(7 downto 0);
end process;
end beh1;
