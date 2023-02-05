----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2023 09:46:00 PM
-- Design Name: 
-- Module Name: full_adder - Structural
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

entity full_adder is
    Port ( a,b,c : in STD_LOGIC;
           sum,carry : out STD_LOGIC);
end full_adder;

architecture Structural of full_adder is

component half_adder is
    Port ( a,b : in STD_LOGIC;
           sum,carry : out STD_LOGIC);
end component;

component or_gate is
    Port ( a,b : in STD_LOGIC;
           y : out STD_LOGIC);
end component;

signal s0,c0,c1: std_logic:='0';

begin

ha0: half_adder port map(a,b,s0,c0);
ha1: half_adder port map(s0,c,sum,c1);
or0: or_gate port map(c0,c1,carry);

end Structural;
