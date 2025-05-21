----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2025 08:11:41 PM
-- Design Name: 
-- Module Name: halfadder_ - Structural
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

entity halfadder_ is
Port ( 
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
           
end halfadder_ ;

architecture Structural of halfadder_ is
   component xor_ent 
   port( 
        x : in std_logic 
        Y: in std_logic
        f: out std_logic 
   );
end component; 

signal xor_out, and_out : std_logic

begin 

xor1: xor_ent 
    port map( 
    x => a, 
    y => b,
    f => xor_out
   );

and1 : and_ent 
    port map( 
     x => a, 
     y => b,
    f => and_out
   );
   
   sum <= xor_out;
   cout <= and_out;
 
   
end Structural;
