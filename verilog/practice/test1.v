module top;

reg [3:1] A;
reg [2:1] B;
reg [14:1] O;
reg [8:1] a, b, c;
// reg c;
reg [32:0]dataBus; 


initial
begin

    // dataBus = 32'h56xba231;
    a = 8'b0101x100; 
    b = 8'b00001100; 
    #5 c = a+b;

end

initial
    $monitor("a = %b; b = %b; c = %b", a, b, c);

endmodule