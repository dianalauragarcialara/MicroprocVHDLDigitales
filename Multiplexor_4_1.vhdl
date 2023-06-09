entity multiplexor is
    port (
        data_in0 : in std_logic_vector(3 downto 0);
        data_in1 : in std_logic_vector(3 downto 0);
        data_in2 : in std_logic_vector(3 downto 0);
        data_in3 : in std_logic_vector(3 downto 0);
        select   : in std_logic_vector(1 downto 0);
        output   : out std_logic_vector(3 downto 0)
    );
end entity multiplexor;

architecture behavioral of multiplexor is
begin
    process (data_in0, data_in1, data_in2, data_in3, select)
    begin
        case select is
            when "00" =>
                output <= data_in0;
            when "01" =>
                output <= data_in1;
            when "10" =>
                output <= data_in2;
            when "11" =>
                output <= data_in3;
            when others =>
                output <= (others => '0');
        end case;
    end process;
end architecture behavioral;
