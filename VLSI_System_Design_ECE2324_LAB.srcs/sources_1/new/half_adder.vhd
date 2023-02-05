----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2023 09:46:00 PM
-- Design Name: 
-- Module Name: half_adder - Structural
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

entity half_adder is
    Port ( a,b : in STD_LOGIC;
           sum,carry : out STD_LOGIC);
end half_adder;

architecture Structural of half_adder is

component xor_gate is
    Port ( a,b : in STD_LOGIC;
           y : out STD_LOGIC);
end component;

component and_gate is
    Port ( a,b : in STD_LOGIC;
           y : out STD_LOGIC);
end component;

begin

xor0: xor_gate port map(a,b,sum);
and0: and_gate port map(a,b,carry);

end Structural;
