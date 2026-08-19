`timescale 1ns/1ps

module mux4x1_tb;

reg I0, I1, I2, I3;
reg S0, S1;

wire Y;

mux4x1 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S0(S0),
    .S1(S1),
    .Y(Y)
);

initial begin

    $display("Time\tS1 S0\tI0 I1 I2 I3\tY");
    $monitor("%0t\t%b  %b\t%b  %b  %b  %b\t%b",
             $time, S1, S0, I0, I1, I2, I3, Y);

    // Input values
    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 1;

    // Select I0
    S1 = 0; S0 = 0;
    #10;

    // Select I1
    S1 = 0; S0 = 1;
    #10;

    // Select I2
    S1 = 1; S0 = 0;
    #10;

    // Select I3
    S1 = 1; S0 = 1;
    #10;

    $finish;
end

endmodule