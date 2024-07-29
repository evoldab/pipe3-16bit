module IE (    
	input clk,
	input rst,
	input wire [15:0] data1,
	input wire [15:0] data2,
	input wire [3:0] opcode,
	output reg [15:0] result
);

always @(posedge rst or posedge clk) begin
	if (rst) begin
		result <= 16'b0;
	end else begin         
		case (opcode)
		16'h0: result = data1 + data2; // ADD
		16'h1: result = data1 - data2; // SUB
		16'h2: result = data1 & data2; // AND
		16'h3: result = data1 | data2; // OR
		16'h4: result = data1 ^ data2; // XOR
		//tam thoi test 5 opcode thong dung
		default: result = 16'b0; // Default
		endcase
	end
end

endmodule

