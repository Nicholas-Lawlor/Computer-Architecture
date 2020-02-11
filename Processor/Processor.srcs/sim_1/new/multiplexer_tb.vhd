--------------------------------------------------------------------------------
-- Company: Trinity College
-- Engineer: Dr. Michael Manzke
--
-- Create Date:   11:50:59 02/23/2012
-- Design Name:   
-- Module Name:   C:/Xilinx/12.4/ISE_DS/ISE/ISEexamples/MichaelsMultiplexer/multiplexer_tb.vhd
-- Project Name:  MichaelsMultiplexer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplexer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY multiplexer_tb IS
END multiplexer_tb;
 
ARCHITECTURE behavior OF multiplexer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplexer
    PORT(
         s : IN  std_logic_vector(1 downto 0);
         in1 : IN  std_logic_vector(15 downto 0);
         in2 : IN  std_logic_vector(15 downto 0);
         in3 : IN  std_logic_vector(15 downto 0);
         in4 : IN  std_logic_vector(15 downto 0);
         z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s_sig : std_logic_vector(1 downto 0) := (others => '0');
   signal in1_sig : std_logic_vector(15 downto 0) := (others => '0');
   signal in2_sig : std_logic_vector(15 downto 0) := (others => '0');
   signal in3_sig : std_logic_vector(15 downto 0) := (others => '0');
   signal in4_sig : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal z_sig : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplexer PORT MAP (
          s => s_sig,
          in1 => in1_sig,
          in2 => in2_sig,
          in3 => in3_sig,
          in4 => in4_sig,
          z => z_sig
        );

   stim_proc: process
   begin		
      in1_sig <= "1010101010101010";
		in2_sig <= "1100110011001100";
		in3_sig <= "1111000011110000";
		in4_sig <= "1111111100000000";
      wait for 10 ns;	
      s_sig <= "00";

      wait for 10 ns;	
		s_sig <= "01";

      wait for 10 ns;	
		s_sig <= "10";

      wait for 10 ns;	
		s_sig <= "11";
     
 --     wait;
   end process;

END;
