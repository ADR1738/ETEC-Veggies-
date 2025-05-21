----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2025 08:11:33 PM
-- Design Name: 
-- Module Name: TB - Behavioral
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

entity and_tb is
--  Port ( );
end and_tb;

architecture Behavioral1 of and_tb is
component and_gate is
port (x,y: in std_logic;
f:out std_logic);
end component;
--inputs
signal x : std_logic:= '0';
signal y : std_logic:= '0';
--outputs
signal f : std_logic; 

begin
uut: and_gate port map (x=>x,y=>y, f=>f);
--stimulus process
stim_proc:process
begin
wait for 10 ns;
x<='1';
y<='0';
wait for 10 ns;
x<='0';
y<='1';
wait for 10 ns;
x<='0';
y<='0';
wait for 10 ns;
x<='1';
y<='1';
wait for 10 ns;
end process;
end Behavioral1;
