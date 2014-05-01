library verilog;
use verilog.vl_types.all;
entity storageFinal is
    port(
        \Clock\         : in     vl_logic;
        up_down         : in     vl_logic;
        Q               : out    vl_logic_vector(4 downto 0);
        display         : out    vl_logic_vector(6 downto 0);
        confirm         : in     vl_logic;
        clock           : in     vl_logic;
        T               : out    vl_logic;
        Resetn          : in     vl_logic
    );
end storageFinal;
