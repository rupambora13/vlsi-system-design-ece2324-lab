----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2023 10:08:51 PM
-- Design Name: 
-- Module Name: adder_4bit - Structural
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

entity adder_4bit is
    Port ( a0,a1,a2,a3 : in STD_LOGIC;
           b0,b1,b2,b3 : in STD_LOGIC;
           c0 : in STD_LOGIC;
           s0,s1,s2,s3 : out STD_LOGIC;
           carry : out STD_LOGIC);
end adder_4bit;

architecture Structural of adder_4bit is

component full_adder is
    Port ( a,b,c : in STD_LOGIC;
           sum,carry : out STD_LOGIC);
end component;

signal c1,c2,c3: std_logic:='0';

begin

fa0: full_adder port map(a0,b0,c0,s0,c1);
fa1: full_adder port map(a1,b1,c1,s1,c2);
fa2: full_adder port map(a2,b2,c2,s2,c3);
fa3: full_adder port map(a3,b3,c3,s3,carry);

end Structural;
