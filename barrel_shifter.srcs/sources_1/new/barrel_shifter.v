module barrel_shifter( input s1,input s0,input w3,input w2,input w1,input w0,output y3,output y2,output y1,output y0);
mux4_1 m1(.a(w3),.b(w2),.c(w1),.d(w0),.s1(s1),.s0(s0),.y(y3));
mux4_1 m2(.a(w2),.b(w1),.c(w0),.d(w3),.s1(s1),.s0(s0),.y(y2));
mux4_1 m3(.a(w1),.b(w0),.c(w3),.d(w2),.s1(s1),.s0(s0),.y(y1));
mux4_1 m4(.a(w0),.b(w3),.c(w2),.d(w1),.s1(s1),.s0(s0),.y(y0));
endmodule


module mux4_1(input a,input b,input c,input d,input s1,input s0,output reg y);
always@(*)begin
case({s1,s0})
2'b00:y=a;
2'b01:y=b;
2'b10:y=c;
2'b11:y=d;
endcase
end
endmodule

