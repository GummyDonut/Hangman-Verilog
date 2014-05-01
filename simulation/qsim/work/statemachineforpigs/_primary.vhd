library verilog;
use verilog.vl_types.all;
entity statemachineforpigs is
    port(
        Q               : in     vl_logic;
        confirm         : in     vl_logic;
        Resetn          : in     vl_logic;
        clock           : in     vl_logic;
        T               : out    vl_logic
    );
end statemachineforpigs;
