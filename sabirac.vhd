library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sabirac is
    Port ( a : in STD_LOGIC_VECTOR (47 downto 0);
           b : in STD_LOGIC_VECTOR (47 downto 0);
           c : out STD_LOGIC_VECTOR (48 downto 0));
end sabirac;

architecture Behavioral of sabirac is
    signal a_ext, b_ext: signed(48 downto 0);
begin

    a_ext <= resize(signed(a), 49);
    b_ext <= resize(signed(b), 49);
    c <= std_logic_vector(a_ext + b_ext);

end Behavioral;
