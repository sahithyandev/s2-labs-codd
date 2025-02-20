


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Circuit2 is
    Port ( g0 : in STD_LOGIC;
           g1 : in STD_LOGIC;
           g2 : in STD_LOGIC;
           g : out STD_LOGIC;
           a : out STD_LOGIC;
           r : out STD_LOGIC);
end circuit2;

architecture Behavioral of Circuit2 is
signal ng0, ng1, ng2: std_logic;

begin
    g <= (g0 AND g1 AND g2);
    
    ng0 <= NOT(g0);
    ng1 <= NOT(g1);
    ng2 <= NOT(g2);
    
    a <= (g0 AND g1 AND ng2) OR (g0 AND ng1 AND g2) OR (ng0 AND g1 AND g2);
    
    r <= (ng0 AND ng1 AND ng2) OR (g0 AND ng1 AND ng2) OR (ng0 AND g1 AND ng2) OR (ng0 AND ng1 AND g2);

end Behavioral;