`timescale 1ps/1ps

module tb_riscV;
	reg clk;
	reg rst;
	reg PC_we;

core uut(
	.clk(clk),
	.rst(rst),
	.PC_we(PC_we)
);

always begin
        clk = 1;
        #10;
        clk = 0;
        #10;
end

initial begin
	PC_we = 1;
        rst = 1;
        #10;
        rst = 0;
end

initial begin
        $dumpfile("/home/evoldab/Pipeline3bit16/waveform.vcd");
        $dumpvars(0, tb_riscV);
end


endmodule


