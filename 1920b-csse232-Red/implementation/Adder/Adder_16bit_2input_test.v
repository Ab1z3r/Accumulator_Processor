reg [15:0] A;

reg [15:0] R;

alu1b UUT (
  .A(A)
  .R(R)
)

initial begin 
   A = 16'b0000 0000 0000 0000
   #1
   if(R==2) begin
      $display("[+] PASS");
   end
   else begin
      $display("[-] FAIL");
   end
   repeat (65535) begin
    A = A+1;
    #1
        if(R==(A+2)) begin
           $display("[+] PASS");
        end
    else begin
			  $display("[-] FAIL");
       break;
    end
