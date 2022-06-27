library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mnozac is
    Port ( a : in STD_LOGIC_VECTOR (23 downto 0);
           b : in STD_LOGIC_VECTOR (23 downto 0);
           c : out STD_LOGIC_VECTOR (47 downto 0));
end mnozac;

architecture Behavioral of mnozac is

begin

    c <= std_logic_vector(signed(a) * signed(b));

end Behavioral;
