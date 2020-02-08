module jk_ff(q, p, e, j, k);

   input  j, k, e;
   output q, p;
   wire   S, R;

   and(R, k, e, q);
   and(S, j, e, p);
   nor(q, R, p);
   nor(p, S, q);
   
endmodule
