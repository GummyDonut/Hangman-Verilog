library verilog;
use verilog.vl_types.all;
entity statemachineforpigs_vlg_sample_tst is
    port(
        Q               : in     vl_logic;
        Resetn          : in     vl_logic;
        clock           : in     vl_logic;
        confirm         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end statemachineforpigs_vlg_sample_tst;
