module shift_register(input clk, input reset, input [3:0] Din, output reg [3:0] Q);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 4'b0000;
        else
            Q <= {Q[2:0], Din[0]};  // Shift left and input Din[0]
    end
endmodule
