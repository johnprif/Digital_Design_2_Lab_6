LIBRARY ieee  ; 
LIBRARY std  ; 
LIBRARY work  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ;
USE ieee.numeric_std.ALL; 
USE std.textio.all  ; 
USE work.Declarations.all  ; 

ENTITY multiplier_tb  IS 
  GENERIC (
    n  : INTEGER   := 8 ); 
END ; 
 
ARCHITECTURE multiplier_tb_arch OF multiplier_tb IS
  SIGNAL High   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL SI   :  STD_LOGIC  ; 
  SIGNAL Rst   :  STD_LOGIC  ; 
  SIGNAL Low   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL monitor_state : state_type;
  SIGNAL monitor_count : std_logic_vector(n downto 0);
  SIGNAL A_IN  :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL B_IN  :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 

  COMPONENT Multiplier  
    GENERIC ( 
      n  : INTEGER  );  
    PORT ( 
      High  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      SI  : in STD_LOGIC ; 
      Rst  : in STD_LOGIC ; 
      Low  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      CLK  : in STD_LOGIC ;
		A_IN  : in STD_LOGIC_VECTOR (n - 1 downto 0) ;
		B_IN  : in STD_LOGIC_VECTOR (n - 1 downto 0)); 
  END COMPONENT ; 
BEGIN
  DUT  : Multiplier  
    GENERIC MAP ( 
      n  => n   )
    PORT MAP ( 
      High   => High  ,
      SI   => SI  ,
      Rst   => Rst  ,
      Low   => Low  ,
      CLK   => CLK  ,
		A_IN => A_IN,
		B_IN => B_IN) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 clk  <= '0'  ;
	 Rst<='1';
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 49
	loop
	    clk  <= '1'  ;
		 Rst<='0';
	   wait for 10 ns ;
	    clk  <= '0'  ;
	   wait for 10 ns ;
-- 990 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;
 
 A_IN<="00000101";
 B_IN<="00001100";
 monitor_state <= << signal DUT.U_Ctl.state : state_type >>;
 monitor_count <= << signal DUT.U_Ctl.count : std_logic_vector(n downto 0) >>;
 
 
 
 process
 begin
 wait on monitor_state;
 if (monitor_state = FINISH) then
  wait on clk;
  assert (FALSE) report "Checking..." severity note;
  --assert (Low="0011" and High="0010") report "Check Failed" severity error;
  assert (A_IN*B_IN=High & Low) report "Check Failed" severity error;
  report "A_IN*B_IN=" & to_string(conv_integer(A_IN*B_IN));
 end if;
end process;
 
END;
