----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 02:11:40 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_8_to_1 is
    Port ( EN : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is

component Decoder_3_to_8
    Port ( EN : in STD_LOGIC;
   I : in STD_LOGIC_VECTOR (2 downto 0);
   Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

begin
    process(S, D)
    begin
        if EN = '0' then
            Y<= '0';
        else
            case S is
                when "000" => Y <= D(0);
                when "001" => Y <= D(1);
                when "010" => Y <= D(2);
                when "011" => Y <= D(3);
                when "100" => Y <= D(4);
                when "101" => Y <= D(5);
                when "110" => Y <= D(6);
                when "111" => Y <= D(7);
                when others => Y <= '0';
            end case;
         end if;
    end process;

end Behavioral;
