`timescale 1ns/1ps

module full_subtractor_tb;

reg A;
reg B;
reg Bin;

wire Diff;
wire Bout;

full_subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Bout(Bout)
);

initial
begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);

    $display("A B Bin | Diff Bout");
    $display("-------------------");

    A=0; B=0; Bin=0; #10;
    $display("%b %b %b |  %b    %b",A,B,Bin,Diff,Bout);

    A=0; B=0; Bin=1; #10;
    $display("%b %b %b |  %b    %b",A,B,Bin,Diff,Bout);

    A=0; B=1; Bin=0; #10;
    $display("%b %b %b |  %b    %b",A,B,Bin,Diff,Bout);

    A=0; B=1; Bin=1; #10;
    $display("%b %b %b |  %b    %b",A,B,Bin,Diff,Bout);

    A=1; B=0; Bin=0; #10;
    $display("%b %b %b |  %b    %b",A,B,Bin,Diff,Bout);

    A=1; B=0; Bin=1; #10;
    $display("%b %b %b |  %b    %b",A,B,Bin,Diff,Bout);

    A=1; B=1; Bin=0; #10;
    $display("%b %b %b |  %b    %b",A,B,Bin,Diff,Bout);

    A=1; B=1; Bin=1; #10;
    $display("%b %b %b |  %b    %b",A,B,Bin,Diff,Bout);

    #10 $finish;
end

endmodule