library ieee;
use ieee.std_logic_1164.all;

entity project_unit_3 is
port(
-- inputs
tank,cistern,selector : in std_logic_vector (1 downto 0);
-- outputs
segments : out std_logic_vector (7 downto 0);
display : out std_logic_vector (3 downto 0)
);
end project_unit_3;

architecture beh1 of project_unit_3 is
signal x,y,z : std_logic_vector(7 downto 0);
begin
-- comparison
process (tank,cistern)
begin if (cistern="00" and tank="11") then x<="01100001";
elsif (cistern="01" and tank="11") then x<="01100001";
else x<="01110001";
end if;
end process;
-- a value
y<=x"03" when (tank="00") else --0
x"9F" when (tank="01") else --1
x"25" when (tank="10") else --2
X"0D"; --3
-- b value
z<=x"03" when (tank="00") else --0
x"9F" when (tank="01") else --1
x"25" when (tank="10") else --2
x"0D"; --3
-- multiplexor
segments<=x when (selector="11") else --comparison
y when (tank="10") else --a value
z when (tank="01") else --b value
x"FF";
display<="1110";
end beh1;
