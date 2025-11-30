LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY recog2 is 
PORT( 
x: IN STD_ULOGIC; 
clk: IN STD_ULOGIC; 
reset: IN STD_ULOGIC; 
y: OUT STD_ULOGIC); 
END; 

ARCHITECTURE arch_mealy of recog2 is
TYPE state_type is (INIT, FIRST, SECOND, THIRD); 
SIGNAL curState, nextState: STATE_TYPE; 
BEGIN 
combi_nextState: process(curState, x) 
BEGIN 
CASE curState IS 
WHEN INIT => 
IF x = '1' THEN nextState <= INIT; 
ELSE nextState <= FIRST; 
WHEN FIRST => 
IF x = '0' 
THEN nextState <= FIRST;
