----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2025 07:15:00 PM
-- Design Name: 
-- Module Name: comparator_fourbit - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator_fourbit is
    Port ( a : in STD_LOGIC_vector(3 downto 0);
           b : in STD_LOGIC_vector(3 downto 0);
           a_gt_b : out STD_LOGIC;
           a_eq_b : out STD_LOGIC;
           a_it_b : out STD_LOGIC);
end comparator_fourbit;

architecture Behavioral of comparator_fourbit is
    signal a_unsigned, b_unsigned : unsigned (3 downto 0);
begin
    
    process (a, b)
    begin
        if unsigned(a) > unsigned(b) then
           a_gt_b <= '1';
           a_eq_b <= '0';
           a_it_b <= '0';
           elsif unsigned(a) = unsigned (b) then 
           a_gt_b <= '0';
           a_eq_b <= '1';
           a_it_b <= '0';
           else
           a_gt_b <= '0';
           a_eq_b <= '0';
           a_it_b <= '1';
        end if; 
        end process;
        end Behavioral;
