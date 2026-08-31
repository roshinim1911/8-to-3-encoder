module tb_encoder_8to3;

    reg I0, I1, I2, I3, I4, I5, I6, I7;
    wire Y2, Y1, Y0;

   
    encoder_8to3 uut (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .I4(I4), .I5(I5), .I6(I6), .I7(I7),
        .Y2(Y2), .Y1(Y1), .Y0(Y0)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb_encoder_8to3);
    
        I0=1; I1=0; I2=0; I3=0;
        I4=0; I5=0; I6=0; I7=0;
        #10;

   
        I0=0; I1=1; I2=0; I3=0;
        I4=0; I5=0; I6=0; I7=0;
        #10;

       
        I0=0; I1=0; I2=1; I3=0;
        I4=0; I5=0; I6=0; I7=0;
        #10;

       
        I0=0; I1=0; I2=0; I3=1;
        I4=0; I5=0; I6=0; I7=0;
        #10;

      
        I0=0; I1=0; I2=0; I3=0;
        I4=1; I5=0; I6=0; I7=0;
        #10;

      
        I0=0; I1=0; I2=0; I3=0;
        I4=0; I5=1; I6=0; I7=0;
        #10;

    
        I0=0; I1=0; I2=0; I3=0;
        I4=0; I5=0; I6=1; I7=0;
        #10;

      
        I0=0; I1=0; I2=0; I3=0;
        I4=0; I5=0; I6=0; I7=1;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | I=%b%b%b%b%b%b%b%b | Y=%b%b%b",
                 $time, I7,I6,I5,I4,I3,I2,I1,I0,Y2,Y1,Y0);
    end

endmodule