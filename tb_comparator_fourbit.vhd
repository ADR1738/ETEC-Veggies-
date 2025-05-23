----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2025 08:36:03 PM
-- Design Name: 
-- Module Name: tb_comparator_fourbit - Behavioral
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

entity tb_comparator_fourbit is
end tb_comparator_fourbit;

architecture test of tb_comparator_fourbit is
    component comparator_fourbit
        port(
            a  : in  std_logic_vector(3 downto 0);
            b : in  std_logic_vector(3 downto 0);
            a_gt_b : out std_logic;
            a_eq_b : out std_logic;
            a_it_b : out std_logic);
    end component;

    signal a_tb, b_tb : std_logic_vector(3 downto 0) := "0000";
    signal a_gt_b_tb, a_eq_b_tb, a_it_b_tb : std_logic;

begin
    uut: comparator_fourbit port map(
        a => a_tb,
        b => b_tb,
        a_gt_b => a_gt_b_tb,
        a_eq_b => a_eq_b_tb,
        a_it_b => a_it_b_tb);

    process
    begin
        a_tb <= "0001"; b_tb <= "0000"; wait for 10 ns; -- a > b
        a_tb <= "0010"; b_tb <= "0010"; wait for 10 ns; -- a = b
        a_tb <= "0011"; b_tb <= "0100"; wait for 10 ns; -- a < b
        a_tb <= "1111"; b_tb <= "0001"; wait for 10 ns; -- a > b
        a_tb <= "0000"; b_tb <= "1111"; wait for 10 ns; -- a < b

        wait;
    end process;
end test;
