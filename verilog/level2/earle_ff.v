module earle_ff(q, e, d);

   input  d, e;
   output q;
   wire   a, b, c, f;

   not(f,e);
   nand(c, d, e);
   nand(q, a, b, c);
   nand(a, d, q);
   nand(b, q, f);
   
endmodule
