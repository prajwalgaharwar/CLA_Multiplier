library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cla is -- Carry look ahead adder module
    Port ( inp1 : in  STD_LOGIC_VECTOR (31 downto 0);
           inp2 : in  STD_LOGIC_VECTOR (31 downto 0);
           sum : out  STD_LOGIC_VECTOR (32 downto 0);
           carry : out  STD_LOGIC);
end cla;

architecture dataflow of cla is
signal p,g,c: std_logic_vector(31 downto 0);

begin

 g(0)<= inp1(0) and inp2(0);
 g(1)<= inp1(1) and inp2(1);
 g(2)<= inp1(2) and inp2(2);
 g(3)<= inp1(3) and inp2(3);
 g(4)<= inp1(4) and inp2(4);
 g(5)<= inp1(5) and inp2(5);
 g(6)<= inp1(6) and inp2(6);
 g(7)<= inp1(7) and inp2(7);
 g(8)<= inp1(8) and inp2(8);
 g(9)<= inp1(9) and inp2(9);
 g(10)<= inp1(10) and inp2(10);
 g(11)<= inp1(11) and inp2(11);
 g(12)<= inp1(12) and inp2(12);
 g(13)<= inp1(13) and inp2(13);
 g(14)<= inp1(14) and inp2(14);
 g(15)<= inp1(15) and inp2(15);
 g(16)<= inp1(16) and inp2(16);
 g(17)<= inp1(17) and inp2(17);
 g(18)<= inp1(18) and inp2(18);
 g(19)<= inp1(19) and inp2(19);
 g(20)<= inp1(20) and inp2(20);
 g(21)<= inp1(21) and inp2(21);
 g(22)<= inp1(22) and inp2(22);
 g(23)<= inp1(23) and inp2(23);
 g(24)<= inp1(24) and inp2(24);
 g(25)<= inp1(25) and inp2(25);
 g(26)<= inp1(26) and inp2(26);
 g(27)<= inp1(27) and inp2(27);
 g(28)<= inp1(28) and inp2(28);
 g(29)<= inp1(29) and inp2(29);
 g(30)<= inp1(30) and inp2(30);
 g(31)<= inp1(31) and inp2(31);

 p(0)<= inp1(0) xor inp2(0);
 p(1)<= inp1(1) xor inp2(1);
 p(2)<= inp1(2) xor inp2(2);
 p(3)<= inp1(3) xor inp2(3);
 p(4)<= inp1(4) xor inp2(4);
 p(5)<= inp1(5) xor inp2(5);
 p(6)<= inp1(6) xor inp2(6);
 p(7)<= inp1(7) xor inp2(7);
 p(8)<= inp1(8) xor inp2(8);
 p(9)<= inp1(9) xor inp2(9);
 p(10)<= inp1(10) xor inp2(10);
 p(11)<= inp1(11) xor inp2(11);
 p(12)<= inp1(12) xor inp2(12);
 p(13)<= inp1(13) xor inp2(13);
 p(14)<= inp1(14) xor inp2(14);
 p(15)<= inp1(15) xor inp2(15);
 p(16)<= inp1(16) xor inp2(16);
 p(17)<= inp1(17) xor inp2(17);
 p(18)<= inp1(18) xor inp2(18);
 p(19)<= inp1(19) xor inp2(19);
 p(20)<= inp1(20) xor inp2(20);
 p(21)<= inp1(21) xor inp2(21);
 p(22)<= inp1(22) xor inp2(22);
 p(23)<= inp1(23) xor inp2(23);
 p(24)<= inp1(24) xor inp2(24);
 p(25)<= inp1(25) xor inp2(25);
 p(26)<= inp1(26) xor inp2(26);
 p(27)<= inp1(27) xor inp2(27);
 p(28)<= inp1(28) xor inp2(28);
 p(29)<= inp1(29) xor inp2(29);
 p(30)<= inp1(30) xor inp2(30);
 p(31)<= inp1(31) xor inp2(31);

 c(0)<= '0';
 c(1) <=g(0) or (p(0) and c(0));
 c(2) <=g(1) or (p(1) and c(1));
 c(3) <=g(2) or (p(2) and c(2));
 c(4) <=g(3) or (p(3) and c(3));
 c(5) <=g(4) or (p(4) and c(4));
 c(6) <=g(5) or (p(5) and c(5));
 c(7) <=g(6) or (p(6) and c(6));
 c(8) <=g(7) or (p(7) and c(7));
 c(9) <=g(8) or (p(8) and c(8));
 c(10) <=g(9) or (p(9) and c(9));
 c(11) <=g(10) or (p(10) and c(10));
 c(12) <=g(11) or (p(11) and c(11));
 c(13) <=g(12) or (p(12) and c(12));
 c(14) <=g(13) or (p(13) and c(13));
 c(15) <=g(14) or (p(14) and c(14));
 c(16) <=g(15) or (p(15) and c(15));
 c(17) <=g(16) or (p(16) and c(16));
 c(18) <=g(17) or (p(17) and c(17));
 c(19) <=g(18) or (p(18) and c(18));
 c(20) <=g(19) or (p(19) and c(19));
 c(21) <=g(20) or (p(20) and c(20));
 c(22) <=g(21) or (p(21) and c(21));
 c(23) <=g(22) or (p(22) and c(22));
 c(24) <=g(23) or (p(23) and c(23));
 c(25) <=g(24) or (p(24) and c(24));
 c(26) <=g(25) or (p(25) and c(25));
 c(27) <=g(26) or (p(26) and c(26));
 c(28) <=g(27) or (p(27) and c(27));
 c(29) <=g(28) or (p(28) and c(28));
 c(30) <=g(29) or (p(29) and c(29));
 c(31) <=g(30) or (p(30) and c(30));
 carry <=g(31) or (p(31) and c(31));

 sum(0)<=p(0) xor c(0) ;
 sum(1)<=p(1) xor c(1);
 sum(2)<=p(2) xor c(2);
 sum(3)<=p(3) xor c(3);
 sum(4)<=p(4) xor c(4);
 sum(5)<=p(5) xor c(5);
 sum(6)<=p(6) xor c(6);
 sum(7)<=p(7) xor c(7);
 sum(8)<=p(8) xor c(8);
 sum(9)<=p(9) xor c(9);
 sum(10)<=p(10) xor c(10);
 sum(11)<=p(11) xor c(11);
 sum(12)<=p(12) xor c(12);
 sum(13)<=p(13) xor c(13);
 sum(14)<=p(14) xor c(14);
 sum(15)<=p(15) xor c(15);
 sum(16)<=p(16) xor c(16);
 sum(17)<=p(17) xor c(17);
 sum(18)<=p(18) xor c(18);
 sum(19)<=p(19) xor c(19);
 sum(20)<=p(20) xor c(20);
 sum(21)<=p(21) xor c(21);
 sum(22)<=p(22) xor c(22);
 sum(23)<=p(23) xor c(23);
 sum(24)<=p(24) xor c(24);
 sum(25)<=p(25) xor c(25);
 sum(26)<=p(26) xor c(26);
 sum(27)<=p(27) xor c(27);
 sum(28)<=p(28) xor c(28);
 sum(29)<=p(29) xor c(29);
 sum(30)<=p(30) xor c(30);
 sum(31)<=p(31) xor c(31);


end dataflow;

