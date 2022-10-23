library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.Declarations.all;

entity CtrlLogic is
		generic(	n:	integer:=8);
		port(		Rst, CLK :in	std_logic;
					SL_A, SL_B, SL_H, SL_L, SL_C	:out	std_logic;
					EN_A, EN_B, EN_H, EN_L, EN_C	:out	std_logic);
end CtrlLogic;

architecture RTL of CtrlLogic is 

	signal state: state_type;
	signal count: std_logic_vector(n downto 0);
	
begin
	p0:process(Rst, CLK)
	begin
		if(Rst='1')then
			count<=(n downto 0=>'0');
		elsif(CLK'event and CLK='1')then
			count<=count + '1';
		end if;
	end process;

	p1:process(Rst,CLK)
	begin	
		if(Rst='1')then state <= LOAD;
		elsif(CLK'event and CLK='1')then
			case state is
				when LOAD	=>		if(conv_integer(count)=0)then state <= ADD;end if;
				when ADD		=>		state <= SHIFT;
				when SHIFT	=>		if(conv_integer(count)=2*n)then state <= FINISH;else state <= ADD;end if;
				when FINISH	=>		null;
			end case;
		end if;
	end process;

	EN_A	<= '1' when state = LOAD else '0';
	SL_A 	<= '0' when state = LOAD ;

	EN_B  <= '1' when (state = LOAD or state = SHIFT) else '0';
	SL_B  <= '0' when (state = LOAD) else '1' when (state = SHIFT);
	
	EN_H  <= '1' when (state = ADD or state = SHIFT) else '0';
	SL_H  <= '1' when state = SHIFT else '0';

	EN_L  <= '1' when state = SHIFT else '0';
	SL_L  <= '1' when state = SHIFT else '0';

	EN_C  <= '1' when state = ADD else '0'; 
	SL_C  <= '0';

end RTL;