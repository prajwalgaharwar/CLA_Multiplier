--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : test.vhw
-- /___/   /\     Timestamp : Sun Mar 20 21:36:09 2016
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: test
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY test IS
END test;

ARCHITECTURE testbench_arch OF test IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT cla
        PORT (
            inp1 : In std_logic_vector (31 DownTo 0);
            inp2 : In std_logic_vector (31 DownTo 0);
            sum : Out std_logic_vector (32 DownTo 0);
            carry : Out std_logic
        );
    END COMPONENT;

    SIGNAL inp1 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL inp2 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL sum : std_logic_vector (32 DownTo 0) := "000000000000000000000000000000000";
    SIGNAL carry : std_logic := '0';

    BEGIN
        UUT : cla
        PORT MAP (
            inp1 => inp1,
            inp2 => inp2,
            sum => sum,
            carry => carry
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                inp1 <= "00000000000000000000000000000001";
                inp2 <= "00000000000000000000000000000001";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                inp1 <= "01011111001001111110011011101000";
                inp2 <= "11101010001100011010011110111001";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                inp1 <= "11001000001111111010100100100110";
                inp2 <= "01110011000110011101101101010111";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                inp1 <= "10010001101100111101111110001001";
                inp2 <= "01110100000101011010110010001000";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                inp1 <= "00011101101110011110000001110110";
                inp2 <= "10101000100101011100011000100111";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                inp1 <= "11101010001100011010011110111001";
                inp2 <= "00111111110111011101000111101110";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                inp1 <= "01110011000110011101101101010111";
                inp2 <= "01100110010100101010111000000000";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                inp1 <= "01110100000101011010110010001000";
                inp2 <= "11001000010110101100101011011111";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                inp1 <= "10101000100101011100011000100111";
                inp2 <= "00011101010100101001010101110000";
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

