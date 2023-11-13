LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Control1 IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        SI_SD : IN STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
        D_I : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        PD_PI : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END Control1;

ARCHITECTURE BEHAVIOR OF Control1 IS
    TYPE type_fstate IS (R,D,I,A);
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
        PD_PI <= "0000";
        CASE fstate IS
            WHEN R =>
                IF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    reg_fstate <= D;
                ELSIF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    reg_fstate <= A;
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    reg_fstate <= I;
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    reg_fstate <= R;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= R;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PI <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PI <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PI <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PI <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PI <= "0000";
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
            WHEN D =>
                IF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    reg_fstate <= I;
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    reg_fstate <= R;
                ELSIF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    reg_fstate <= A;
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    reg_fstate <= D;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= D;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PI <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PI <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PI <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PI <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PI <= "0000";
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
            WHEN I =>
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
                    reg_fstate <= I;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PI <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PI <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PI <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PI <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PI <= "0000";
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
            WHEN A =>
                IF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    reg_fstate <= I;
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    reg_fstate <= R;
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    reg_fstate <= D;
                ELSIF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    reg_fstate <= A;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= A;
                END IF;

                IF ((SI_SD(1 DOWNTO 0) = "00")) THEN
                    PD_PI <= "1111";
                ELSIF ((SI_SD(1 DOWNTO 0) = "01")) THEN
                    PD_PI <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "10")) THEN
                    PD_PI <= "0101";
                ELSIF ((SI_SD(1 DOWNTO 0) = "11")) THEN
                    PD_PI <= "0101";
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    PD_PI <= "0000";
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
            WHEN OTHERS => 
                D_I <= "1111";
                PD_PI <= "1111";
                report "Reach undefined state";
        END CASE;
    END PROCESS;
END BEHAVIOR;