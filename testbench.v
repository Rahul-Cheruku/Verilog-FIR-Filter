
`timescale 1ns / 1ps
module tb;
reg [31 : 0] Ai;
reg [31 : 0] Bi [0 : 9];
wire [31 : 0] Di [0 : 8];

reg clk;
reg clk_enable_0;
reg reset;
integer fd, fd1;
reg [63 : 0]accum_0;
wire [63 : 0]fil_out;
initial
    begin
    clk_enable_0 = 'bz;
    clk = 'b0;
    accum_0 = 'b0;
    
    //signed fix32_28
    Ai = 'd0;
//    Ai[1] = 'd0;
//    Ai[2] = 'd0;
//    Ai[3] = 'd0;
//    Ai[4] = 'd0;
//    Ai[5] = 'd0;
//    Ai[6] = 'd0;
//    Ai[7] = 'd0;
//    Ai[8] = 'd0;
//    Ai[9] = 'd0;
    //coefficients
    //signed fix32_28
    Bi[0] = 32'b00000000000111100100001000011001;
    Bi[1] = 32'b00000000011010101010110100110100;
    Bi[2] = 32'b00000001010100110110110110100110;
    Bi[3] = 32'b00000010100110010111111001010010;
    Bi[4] = 32'b00000011100010100010010010110111;
    Bi[5] = 32'b00000011100010100010010010110111;
    Bi[6] = 32'b00000010100110010111111001010010;
    Bi[7] = 32'b00000001010100110110110110100110;
    Bi[8] = 32'b00000000011010101010110100110100;
    Bi[9] = 32'b00000000000111100100001000011001;
    
//    Bi[0] = 'd2;
//    Bi[1] = 'd2;
//    Bi[2] = 'd2;
//    Bi[3] = 'd2;
//    Bi[4] = 'd2;
//    Bi[5] = 'd2;
//    Bi[6] = 'd2;
//    Bi[7] = 'd2;
//    Bi[8] = 'd2;
//    Bi[9] = 'd2;
      reset = 'bz;
//    #10 clk = 'b1;
//    #15 clk = 'b0;
//    #25 reset = 'b0;
end
initial
begin
    fd = $fopen("C:/Users/rahul/Desktop/input.txt", "r");
    fd1 = $fopen("C:/Users/rahul/Desktop/output.txt", "a+");
        if(fd)
        $display("FILE oppened");
        else
        $display("Problem");
end
always @(posedge clk)
begin
    $fscanf(fd, "%b", Ai);
    if(!$feof(fd))
        begin
            #30;
            $fwrite(fd1, "%b", fil_out);
            $fwrite(fd1, "%s", "   ");

            #30;
        end
    else
        begin
            $fclose(fd);
            $fclose(fd1);
            $finish;
        end
end
always
    #35 clk = ~clk;

    
//task shift_data_by_1;
//begin
//Ai[9] = Ai[8];
//Ai[8] = Ai[7];
//Ai[7] = Ai[6];
//Ai[6] = Ai[5];
//Ai[5] = Ai[4];
//Ai[4] = Ai[3];
//Ai[3] = Ai[2];
//Ai[2] = Ai[1];
//Ai[1] = Ai[0];
//Ai[0] = 'b0;
//end
//endtask


//tested critical path = 22ns so keeping clk period > 22ns
design_1_wrapper uut 
       (.Ai_0(Ai),
        .Bi_0(Bi[0]),
        .Bi_1(Bi[1]),
        .Bi_2(Bi[2]),
        .Bi_3(Bi[3]),
        .Bi_4(Bi[4]),
        .Bi_5(Bi[5]),
        .Bi_6(Bi[6]),
        .Bi_7(Bi[7]),
        .Bi_8(Bi[8]),
        .Bi_9(Bi[9]),
        .accum_0(accum_0),
        .clk_0(clk),
        .clk_enable_0(clk_enable_0),
        .mac_out_0(fil_out),
        .reset_0(reset));

endmodule

