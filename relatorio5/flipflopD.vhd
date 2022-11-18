LIBRARY ieee;
USE ieee.std_logic_1164.all ;
ENTITY flipflopD IS
PORT(S, c : IN BIT;
O : OUT BIT);
END;

ARCHITECTURE behav OF flipflopD IS
BEGIN
PROCESS (S, c)
BEGIN
IF (c 'EVENT AND c = '1' AND S = '1') THEN
O<='1';
ELSIF (c 'EVENT AND c = '1' AND S = '0') THEN
O<='0';
END IF;
END PROCESS ;
END;