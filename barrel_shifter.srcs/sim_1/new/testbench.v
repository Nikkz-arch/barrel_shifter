module testbench;
reg w0,w1,w2,w3,s0,s1;
wire y0,y1,y2,y3;
barrel_shifter uut(.s0(s0),.s1(s1),.w0(w0),.w1(w1),.w2(w2),.w3(w3),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin
$monitor("time=%0t, w3=%b,w2=%b,w1=%b,w0=%b,s1=%b,s0=%b,y3=%b,y2=%b,y1=%b,y0=%b",$time,w3,w2,w1,w0,s1,s0,y3,y2,y1,y0);
w3=1;w2=0;w1=1;w0=0;s1=0;s0=0;#10;
s1=0;s0=1;#10;
s1=1;s0=0;#10;
s1=1;s0=1;#10;
$finish;
end
endmodule

