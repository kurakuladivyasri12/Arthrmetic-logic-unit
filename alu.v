verilog
module alu (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] opcode,
    output reg [3:0] result,
    output reg       carry
);

always @(*) begin

    result = 4'b0000;
    carry  = 1'b0;

    case (opcode)

        3'b000: begin
            // Addition
            {carry, result} = A + B;
        end

        3'b001: begin
            // Subtraction
            result = A - B;
            carry  = 1'b0;
        end

        3'b010: begin
            // AND
            result = A & B;
        end

        3'b011: begin
            // OR
            result = A | B;
        end

        3'b100: begin
            // XOR
            result = A ^ B;
        end

        3'b101: begin
            // NOT A
            result = ~A;
        end

        3'b110: begin
            // Increment A
            {carry, result} = A + 1'b1;
        end

        3'b111: begin
            // Decrement A
            result = A - 1'b1;
            carry  = 1'b0;
        end

        default: begin
            result = 4'b0000;
            carry  = 1'b0;
        end

    endcase

end

endmodule