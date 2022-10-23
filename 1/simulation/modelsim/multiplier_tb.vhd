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
    n  : INTEGER   := 4 ); 
END ; 
 
ARCHITECTURE multiplier_tb_arch OF multiplier_tb IS
  SIGNAL High   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL SI   :  STD_LOGIC  ; 
  SIGNAL Rst   :  STD_LOGIC  ; 
  SIGNAL Low   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL monitor_state : state_type;
  SIGNAL monitor_count : std_logic_vector(n downto 0);
  SIGNAL A  :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL B  :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  COMPONENT Multiplier  
    GENERIC ( 
      n  : INTEGER  );  
    PORT ( 
      High  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      SI  : in STD_LOGIC ; 
      Rst  : in STD_LOGIC ; 
      Low  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      CLK  : in STD_LOGIC ); 
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
      CLK   => CLK   ) ; 



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
 
 SI <= '1' after 0 ns, '1' after 20 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80 ns, '0' after 100 ns, '1'
after 120 ns, '0' after 140 ns;
 monitor_state <= << signal DUT.U_Ctl.state : state_type >>;
 monitor_count <= << signal DUT.U_Ctl.count : std_logic_vector(n downto 0) >>;
 
process(CLK,monitor_count,SI,A,B)
 begin
	if (CLK'event and CLK='1') then 
		if	(conv_integer(monitor_count)<n) then
			B(conv_integer(monitor_count))<=SI;
		elsif	((conv_integer(monitor_count)=n or conv_integer(monitor_count)>n)and (conv_integer(monitor_count)<2*n))	then
			A(conv_integer(monitor_count)-n)<=SI;
		end if;
	end if;
 end process;
 
 process
 begin
 wait on monitor_state;
 if (monitor_state = FINISH) then
  wait on clk;
  assert (FALSE) report "Checking..." severity note;
  --assert (Low="0011" and High="0010") report "Check Failed" severity error;
  assert (A*B=High & Low) report "Check Failed" severity error;
  report "A*B=" & to_string(conv_integer(A*B));
 end if;
end process;
 
END;
