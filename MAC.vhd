library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MAC is
  Port ( 
        clk_i : in STD_LOGIC;
        u_i : in STD_LOGIC_VECTOR(23 downto 0);
        b_i : in STD_LOGIC_VECTOR(23 downto 0);
        mac_i : in STD_LOGIC_VECTOR(47 downto 0);
        mac_o : out STD_LOGIC_VECTOR(47 downto 0));
end MAC;

architecture Behavioral of MAC is
    signal reg_s: STD_LOGIC_VECTOR(47 downto 0) := (others => '0');
begin
    process(clk_i)
    begin
        if clk_i'event and clk_i = '1' then
        reg_s <= mac_i;
        end if;
    end process;
 --kombinaciona logika koja implementira funkcionalnost mnozaca i sabiraca
    mac_o <= std_logic_vector(signed(reg_s) + (signed(u_i) * signed(b_i)));

end Behavioral;
