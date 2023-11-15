LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Controlfinal IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        SI_SD : IN STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
        D_I : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        PD_PD : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END Controlfinal;

ARCHITECTURE BEHAVIOR OF Controlfinal IS
    TYPE type_fstate IS (A,R,D,I,FI,FD);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reset,reg_fstate)
    BEGIN
        IF (reset='1') THEN
            fstate <= R;
        ELSIF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,SI_SD)
    BEGIN
        D_I <= "0000";
        PD_PD <= "0000";
        CASE fstate IS
            WHEN A =>
                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    reg_fstate <= A;
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    reg_fstate <= I;
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    reg_fstate <= D;
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    reg_fstate <= R;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= A;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    D_I <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    D_I <= "0010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    D_I <= "1000";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    D_I <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D_I <= "0000";
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PD <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PD <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PD <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PD <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PD <= "0000";
                END IF;
            WHEN R =>
                IF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    reg_fstate <= R;
                ELSIF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    reg_fstate <= A;
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    reg_fstate <= FI;
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    reg_fstate <= FD;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= R;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    D_I <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    D_I <= "0110";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    D_I <= "1001";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    D_I <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D_I <= "0000";
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PD <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PD <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PD <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PD <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PD <= "0000";
                END IF;
            WHEN D =>
                IF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    reg_fstate <= D;
                ELSIF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    reg_fstate <= A;
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    reg_fstate <= R;
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    reg_fstate <= I;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= D;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    D_I <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    D_I <= "0010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    D_I <= "1000";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    D_I <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D_I <= "0000";
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PD <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PD <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PD <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PD <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PD <= "0000";
                END IF;
            WHEN I =>
                IF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    reg_fstate <= I;
                ELSIF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    reg_fstate <= A;
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    reg_fstate <= D;
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    reg_fstate <= R;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= I;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    D_I <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    D_I <= "0010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    D_I <= "1000";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    D_I <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D_I <= "0000";
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PD <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PD <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PD <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PD <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PD <= "0000";
                END IF;
            WHEN FI =>
                IF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    reg_fstate <= FI;
                ELSIF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    reg_fstate <= A;
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    reg_fstate <= FD;
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    reg_fstate <= R;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= FI;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    D_I <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    D_I <= "0110";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    D_I <= "1001";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    D_I <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D_I <= "0000";
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PD <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PD <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PD <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PD <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PD <= "0000";
                END IF;
            WHEN FD =>
                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    reg_fstate <= A;
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    reg_fstate <= FI;
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    reg_fstate <= FD;
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    reg_fstate <= R;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= FD;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    D_I <= "1010";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    D_I <= "0110";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    D_I <= "1001";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    D_I <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D_I <= "0000";
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PD <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PD <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PD <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PD <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PD <= "0000";
                END IF;
            WHEN OTHERS => 
                D_I <= "XXXX";
                PD_PD <= "XXXX";
                report "Reach undefined state";
        END CASE;
    END PROCESS;
END BEHAVIOR;
