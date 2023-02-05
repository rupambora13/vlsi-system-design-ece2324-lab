----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2023 10:42:48 PM
-- Design Name: 
-- Module Name: adder_4bit_tb - Testbench
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

entity adder_4bit_tb is
--  Port ( );
end adder_4bit_tb;

architecture Testbench of adder_4bit_tb is

component adder_4bit is
    Port ( a0,a1,a2,a3 : in STD_LOGIC;
           b0,b1,b2,b3 : in STD_LOGIC;
           c0 : in STD_LOGIC;
           s0,s1,s2,s3 : out STD_LOGIC;
           carry : out STD_LOGIC);
end component;

    signal a0,a1,a2,a3: std_logic := '0';
    signal b0,b1,b2,b3: std_logic := '0';
    signal c0: std_logic:='0';
    signal s0,s1,s2,s3: std_logic;
    signal carry: std_logic;

begin
UUT: adder_4bit port map (a0=>a0,a1=>a1,a2=>a2,a3=>a3,b0=>b0,b1=>b1,
                          b2=>b2,b3=>b3,c0=>c0,s0=>s0,s1=>s1,s2=>s2,s3=>s3,carry=>carry);
tb: process
begin
    wait for 100 ns;
    a0 <= '0'; a1 <= '1'; a2 <= '0'; a3 <= '1'; 
    b0 <= '1'; b1 <= '1'; b2 <= '0'; b3 <= '1';
    wait for 100 ns;
    a0 <= '1'; a1 <= '0'; a2 <= '1'; a3 <= '1'; 
    b0 <= '1'; b1 <= '0'; b2 <= '0'; b3 <= '1';
    wait for 100 ns;
    a0 <= '1'; a1 <= '1'; a2 <= '0'; a3 <= '0'; 
    b0 <= '1'; b1 <= '1'; b2 <= '1'; b3 <= '0';
    wait;
end process tb;

end Testbench;

