module core (
	input wire clk,
	input wire rst,
	input wire PC_we
);
wire [15:0] instr_if;
wire [15:0] instr_id;
wire [15:0] PC;
wire [15:0] PC_next;
wire [15:0] data1;
wire [15:0] data2;
wire [15:0] R0;
wire [15:0] R1;
wire [15:0] R2;
wire [15:0] R3;
wire [3:0] opcode;
wire [3:0] rd;
wire [3:0] rs1;
wire [3:0] rs2;
wire [15:0] result;

IF uut_if(
	.clk(clk),
	.rst(rst),
	.PC_we(PC_we),
	.instr_if(instr_if),
	.PC(PC),
	.PC_next(PC_next)
);

ID uut_id(
	.clk(clk),
	.rst(rst),
	.instr_if(instr_if),
	.instr_id(instr_id),
	.data1(data1),
	.data2(data2),
	.opcode(opcode),
	.rd(rd),
	.rs1(rs1),
	.rs2(rs2),
	.R0(R0),
	.R1(R1),
	.R2(R2),
	.R3(R3)
);
IE uut_ie(
	.clk(clk),
	.rst(rst),
	.opcode(opcode),
	.data1(data1),
	.data2(data2),
	.result(result)
);

initial begin
	$monitor("At time %t, PC = %h, instr_if = %h, instr_id = %h", $time, PC, instr_if, instr_id);
end

endmodule