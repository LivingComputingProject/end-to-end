module jk_latch(q, p, j, k);

   input  j,  k;
   output q,  p;
   wire   s,  r;

   and(r, k, q);
   and(s, j, p);
   nor(q, r, p);
   nor(p, s, q);
   
endmodule
