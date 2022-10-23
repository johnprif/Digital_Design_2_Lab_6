library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.Declarations.all;

entity Multiplier is
			generic (n: integer :=4);
			port (
						Rst, CLK, SI	: in std_logic;
						Low, High		: out std_logic_vector (n-1 downto 0));
end Multiplier;

architecture RTL_Mul of Multiplier is

component CtrlLogic
	generic ( n: integer := 4 );
	port (	Rst, CLK : in std_logic;
				SL_A, SL_B, SL_H, SL_L, SL_C : out std_logic;
				EN_A, EN_B, EN_H, EN_L, EN_C : out std_logic );
end component;

component Adder
	generic (n: integer :=4);
	port (	A, B	: in	std_logic_vector (n-1 downto 0);
				SUM	: out	std_logic_vector (n-1 downto 0);
				COUT  : out	std_logic );
end component;

component Reg
	generic (n: integer:=4);
	port (	D_in: in std_logic_vector (n-1 downto 0);
				SI, CLK, RST, SLOAD, ENABLE: in std_logic;
				SO: out std_logic;
				D_OUT: out std_logic_vector (n-1 downto 0));
end component;

signal SL_A, SL_B, SL_H, SL_L, SL_C, EN_A, EN_B, EN_H, EN_L, EN_C : std_logic;
signal SO_A, SO_H : std_logic;
signal A, B, SUM, H:	std_logic_vector(n-1 downto 0);
signal C, COUT : std_logic_vector (0 downto 0);

begin

R_A:	Reg	generic map	(n=>n)
				port map		(D_IN=>(n-1 downto 0=>'0'),SI=>SI,CLK=>CLK,RST=>RST,SLOAD=>SL_A,ENABLE=>EN_A,SO=>SO_A,D_OUT=>A);
				
R_B:	Reg	generic map	(n=>n)
				port map		(D_IN=>(n-1 downto 0=>'0'),SI=>SO_A,CLK=>CLK,RST=>RST,SLOAD=>SL_B,ENABLE=>EN_B,SO=>open,D_OUT=>B);
				
R_C:	Reg	generic map	(n=>1)
				port map		(D_IN=>COUT,SI=>'0',CLK=>CLK,RST=>RST,SLOAD=>SL_C,ENABLE=>EN_C,SO=>open,D_OUT=>C);
				
R_H:	Reg	generic map	(n=>n)
				port map		(D_IN=>SUM,SI=>C(0),CLK=>CLK,RST=>RST,SLOAD=>SL_H,ENABLE=>EN_H,SO=>SO_H,D_OUT=>H);
				
High<=H;

R_L:	Reg	generic map	(n=>n)
				port map		(D_IN=>(n-1 downto 0=>'0'),SI=>SO_H,CLK=>CLK,RST=>RST,SLOAD=>SL_L,ENABLE=>EN_L,SO=>open,D_OUT=>Low);
				
U_Ad:	Adder	generic map	(n=>4)
				port map		(A=>H,B=>((n-1 downto 0=>B(0))and A),SUM=>SUM,COUT=>COUT(0));
				
U_Ctl:	CtrlLogic	generic map	(n=>4)
							port map		(Rst=>RST,CLK=>CLK,SL_A=>SL_A,SL_B=>SL_B,SL_H=>SL_H,SL_L=>SL_L,SL_C=>SL_C,EN_A=>EN_A,EN_B=>EN_B,EN_H=>EN_H,EN_L=>EN_L,EN_C=>EN_C);
							



				
end RTL_Mul;