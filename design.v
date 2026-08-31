module encoder_8to3 (
    input  I0, I1, I2, I3, I4, I5, I6, I7,
    output Y2, Y1, Y0
);

 
    assign Y2 = I4 | I5 | I6 | I7;
    assign Y1 = I2 | I3 | I6 | I7;
    assign Y0 = I1 | I3 | I5 | I7;

endmodule