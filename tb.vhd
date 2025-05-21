----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2025 07:50:33 PM
-- Design Name: 
-- Module Name: tb - Behavioral
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

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is
    component half_adder_ent
    port(
        a: in std_logic;
        b: in std_logic
        sum: out std_logic;
        cout: out std_logic
        );
 end component;
 
 -- test signals
 signal a, b : std_logic := '0';
 signal sum, cout: std_logic;
 
 begin
 
 uut: half_adder_ent
 port map(
    a => a, 
    b => b, 
    sum => sum,
    cout => cout
    );
    
 stim_proc: process 
 begin
    a <= '0' 




begin


end Behavioral;
