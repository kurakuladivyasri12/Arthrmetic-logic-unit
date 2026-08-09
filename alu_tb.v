`timescale 1ns/1ps

module alu_tb;

    reg  [3:0] A;
    reg  [3:0] B;
    reg  [2:0] opcode;

    wire [3:0] result;
    wire       carry;

    // Instantiate ALU
    alu uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .carry(carry)
    );

    initial begin

        // Display waveform
        $dumpfile("alu.vcd");
        $dumpvars(0, alu_tb);

        $display("==========================================");
        $display("       4-BIT ALU SIMULATION");
        $display("==========================================");
        $display("Time\tA\tB\tOpcode\tResult\tCarry");
        $display("------------------------------------------");

        // ADD: 5 + 3 = 8
        A = 4'b0101;
        B = 4'b0011;
        opcode = 3'b000;
        #10;
        $display("%0t\t%d\t%d\t%03b\t%d\t%b",
                 $time, A, B, opcode, result, carry);

        // SUB: 9 - 4 = 5
        A = 4'b1001;
        B = 4'b0100;
        opcode = 3'b001;
        #10;
        $display("%0t\t%d\t%d\t%03b\t%d\t%b",
                 $time, A, B, opcode, result, carry);

        // AND: 12 & 10 = 8
        A = 4'b1100;
        B = 4'b1010;
        opcode = 3'b010;
        #10;
        $display("%0t\t%d\t%d\t%03b\t%d\t%b",
                 $time, A, B, opcode, result, carry);

        // OR: 8 | 3 = 11
        A = 4'b1000;
        B = 4'b0011;
        opcode = 3'b011;
        #10;
        $display("%0t\t%d\t%d\t%03b\t%d\t%b",
                 $time, A, B, opcode, result, carry);

        // XOR: 10 ^ 6 = 12
        A = 4'b1010;
        B = 4'b0110;
        opcode = 3'b100;
        #10;
        $display("%0t\t%d\t%d\t%03b\t%d\t%b",
                 $time, A, B, opcode, result, carry);

        // NOT: ~5 = 10
        A = 4'b0101;
        B = 4'b0000;
        opcode = 3'b101;
        #10;
        $display("%0t\t%d\t%d\t%03b\t%d\t%b",
                 $time, A, B, opcode, result, carry);

        // Increment: 7 + 1 = 8
        A = 4'b0111;
        B = 4'b0000;
        opcode = 3'b110;
        #10;
        $display("%0t\t%d\t%d\t%03b\t%d\t%b",
                 $time, A, B, opcode, result, carry);

        // Decrement: 9 - 1 = 8
        A = 4'b1001;
        B = 4'b0000;
        opcode = 3'b111;
        #10;
        $display("%0t\t%d\t%d\t%03b\t%d\t%b",
                 $time, A, B, opcode, result, carry);

        $display("------------------------------------------");
        $display("Simulation Completed Successfully!");
        $display("==========================================");

        $finish;

    end

endmodule