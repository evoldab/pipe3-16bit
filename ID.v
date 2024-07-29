module ID (
	input wire clk,
	input wire rst,
	input [15:0] instr_if,
	output reg [15:0] instr_id,
	output reg [3:0] opcode, 
	output reg [3:0] rd,
	output reg [3:0] rs1,
	output reg [3:0] rs2,
	output reg [15:0] data1,
	output reg [15:0] data2,
	output reg [15:0] R0, R1, R2, R3
);
	reg [15:0] register [0:3];
initial begin
	$readmemh("/home/evoldab/Pipe3bit16/reg.hex", register);
end

always @(posedge clk or posedge rst) begin
        if (rst) begin
		instr_id <= 16'h0;
		data1    <= 16'h0;
		data2    <= 16'h0;
        end else begin
		instr_id <= instr_if;
		data1    <= register[rs1];
		data2    <= register[rs2];
        end
end

assign opcode = instr_id[15:12];
assign rd     = instr_id[11:8];
assign rs1    = instr_id[7:4];
assign rs2    = instr_id[3:0];
assign R0     = register[0];
assign R1     = register[1];
assign R2     = register[2];
assign R3     = register[3];

endmodule

