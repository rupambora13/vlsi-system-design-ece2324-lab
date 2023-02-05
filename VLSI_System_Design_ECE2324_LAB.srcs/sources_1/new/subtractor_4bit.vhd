----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2023 10:08:51 PM
-- Design Name: 
-- Module Name: subtractor_4bit - Structural
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

entity subtractor_4bit is
    Port ( a0,a1,a2,a3 : in STD_LOGIC;
           b0,b1,b2,b3 : in STD_LOGIC;
           M : in STD_LOGIC;
           s0,s1,s2,s3 : out STD_LOGIC;
           carry,V : out STD_LOGIC);
end subtractor_4bit;

architecture Structural of subtractor_4bit is

component full_adder is
    Port ( a,b,c : in STD_LOGIC;
           sum,carry : out STD_LOGIC);
end component;

component xor_gate is
    Port ( a,b : in STD_LOGIC;
           y : out STD_LOGIC);
end component;

signal w0,w1,w2,w3: std_logic:='0';
signal c1,c2,c3: std_logic:='0';

begin

xor0: xor_gate port map(M,b0,w0);
xor1: xor_gate port map(M,b1,w1);
xor2: xor_gate port map(M,b2,w2);
xor3: xor_gate port map(M,b3,w3);

fa0: full_adder port map(a0,w0,M,s0,c1);
fa1: full_adder port map(a1,w1,c1,s1,c2);
fa2: full_adder port map(a2,w2,c2,s2,c3);
fa3: full_adder port map(a3,w3,c3,s3,carry);

--xor4: xor_gate port map(c3,carry,V);

end Structural;
