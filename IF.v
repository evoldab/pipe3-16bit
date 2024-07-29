module IF (
	input wire clk,
	input wire rst,
	input wire PC_we,  //write enable
	output reg [15:0] instr_if,
	output reg [15:0] PC_next,
	output reg [15:0] PC
);
	reg [15:0] memory [0:255];  //doc bo nho tap lenh
initial begin
	$readmemh("/home/evoldab/Pipe3bit16/mem.hex", memory);
end

always @(posedge clk or posedge rst) begin	//doc gia tri PC
	if (rst) begin
		PC <= 16'b0;
	end else if (PC_we) begin
		PC <= PC_next;
	end
end

assign instr_if = memory[PC];   //ket qua cua stage Fetch
assign PC_next = PC + 16'h1; //chuan bi gia tri PC cho lan clk tiep theo

endmodule
