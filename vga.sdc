# Clock constraints file

create_clock -name {root_clk} -period 25.000ns [get_ports { root_clk }]

# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

