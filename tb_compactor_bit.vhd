----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2025 07:12:04 PM
-- Design Name: 
-- Module Name: tb_compactor_bit - Behavioral
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

entity tb_compactor_bit is
end tb_compactor_bit;

architecture Behavioral of tb_compactor_bit is

component compactor_bit
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           y : out STD_LOGIC);
end component;


signal a_tb, b_tb, c_tb, d_tb : std_logic := '0';
signal y_tb : std_logic;
begin 
    uut; compactor_bit
    port map(
        a => a_tb,
        b => b_tb,
        c => c_tb,
        d => d_tb,
        y => y_tb
        );

stimulus: process 
begin 

a_tb <= '0'; b_tb '0'; c_tb <= '0'; d_tb <= '0';
wait for 10 ns; 

a_tb <= '1'; wait for 10 ns;
a_tb <= '0'; b_tb <= '1'; wait for 10 ns;
b_tb <= '0'; c_tb <= '1'; wait for 10 ns;
c_tb <= '0'; d_tb <= '1'; wait for 10 ns;

a_tb <= '1'; b_tb <= '1'; wait for 10 ns;
c_tb <= '1'; d_tb <= '1'; wait for 10 ns;

a_tb <= '0'; b_tb <= '0'; c_tb <= '0'; d_tb <= '0';
wait;
end process stimulus; 
end behavioral; 