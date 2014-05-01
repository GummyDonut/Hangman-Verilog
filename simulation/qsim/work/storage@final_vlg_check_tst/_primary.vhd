library verilog;
use verilog.vl_types.all;
entity storageFinal_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(4 downto 0);
        T               : in     vl_logic;
        display         : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end storageFinal_vlg_check_tst;
