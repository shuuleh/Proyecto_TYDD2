library ieee;
 
use IEEE.std_logic_1164.all;
 
entity comparador is
port(A1,A2,A3,B1,B2,B3: in std_logic;
Amayor: out std_logic);  --declaración variables de salida
END comparador;
 
architecture comportamiento of comparador is 
begin
process (A1,A2,B1,B2) begin
  if ( (A3>B3)or(A3=B3 and A2>B2) or (A2=B2 and A1>B1)) then
   Amayor <= '1';
  else
 	Amayor <= '0';
  end if;
 end process;
END comportamiento;