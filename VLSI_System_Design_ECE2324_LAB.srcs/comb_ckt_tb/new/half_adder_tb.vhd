----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2023 10:42:48 PM
-- Design Name: 
-- Module Name: half_adder_tb - Testbench
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

entity half_adder_tb is
--  Port ( );
end half_adder_tb;

architecture Testbench of half_adder_tb is

component half_adder is
    Port ( a,b : in STD_LOGIC;
           sum,carry : out STD_LOGIC);
end component;

    signal a,b: std_logic := '0';
    signal sum,carry: std_logic;

begin
UUT: half_adder port map (a=>a,b=>b,sum=>sum,carry=>carry);
tb: process
begin
    wait for 100 ns;
    a <= '0'; b <= '1';
    wait for 100 ns;
    a <= '1'; b <= '0';
    wait for 100 ns;
    a <= '1'; b <= '1';
    wait;
end process tb;
end Testbench;