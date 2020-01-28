# Clock constraints file

create_clock -name "clock" -period 25.000ns [get_ports {clk}]

# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks
