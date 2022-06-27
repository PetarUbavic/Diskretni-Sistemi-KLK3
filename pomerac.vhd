library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pomerac is
    Port ( clk_i : in STD_LOGIC;
           d : in STD_LOGIC_VECTOR (47 downto 0);
           q : out STD_LOGIC_VECTOR (47 downto 0));
end pomerac;

architecture Behavioral of pomerac is

begin
    process(clk_i)
    begin
      if clk_i' event and clk_i = '1' then
        q <= d;
      end if;
    end process;

end Behavioral;
