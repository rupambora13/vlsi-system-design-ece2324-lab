----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2023 07:52:30 PM
-- Design Name: 
-- Module Name: xnor_tb - Testbench
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

entity xnor_tb is
end xnor_tb;

architecture Testbench of xnor_tb is
    component xnor_gate is
    Port ( a,b : in STD_LOGIC;
           y : out STD_LOGIC);
    end component;
    
    signal a: std_logic := '0';
    signal b: std_logic := '0';
    signal y: std_logic;

begin

UUT: xnor_gate port map (a=>a, b=>b, y=>y);
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
