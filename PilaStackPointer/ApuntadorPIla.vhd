library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--Juan Pablo Ortega
entity ApuntadorPIla is
    Port ( clk,fe,push,pop : in  STD_LOGIC;
	 pc: in std_logic_vector(3 downto 0);
	 st: inout std_logic_vector (3 downto 0));
end ApuntadorPIla;

architecture arqPila of ApuntadorPIla is
   signal var: std_logic_vector (3 downto 0);
begin
 process(fe,clk,push,pop,pc)
   variable x: std_logic_vector (3 downto 0);
	   begin
		  if (clk' event and clk = '1')then
		      if(fe = '0')then
				if(push = '1')then
				    x:= PC; --- almacenara el dato
					 var <= x;
					 elsif (pop = '0') then
					   ST <= VAR;
				    else
					   ST <= ST;
				   end if;
				 end if;
				end if;
			end process;
end arqPila;

