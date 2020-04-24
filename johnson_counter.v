//////////////////////////////////////////////////////////////////////////////////
// Design: Johnson Counter
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module johnson_counter(clk, rst, out);

    parameter N = 4;
    
    input  wire clk;
    input  wire rst;
    output reg  [N-1:0] out;
    
    always@(posedge clk)
        begin
            if(rst==1) begin
                out <= 1;
            end else begin
                out[N-1]   <=  ~out[0];
                out[N-2:0] <=  out[N-1:1];
            end
            
        end
   
endmodule

//module johnson_counter #(parameter N=4) 
//  (  
//  input clk,                
//  input rst,
//  output reg [N-1:0] out
//  );    
 
//  always @ (posedge clk) begin
//      if (rst)
//         out <= 1;
//      else begin
//        out[N-1] <= ~out[0];
//        for (integer i = 0; i < N-1; i=i+1) begin
//          out[i] <= out[i+1];
//        end
//      end
//  end
//endmodule
