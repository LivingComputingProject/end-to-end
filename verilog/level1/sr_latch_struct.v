module sr_latch(q, p, s, r);

   input  s, r;
   output q, p;

   nor(q, r, p);
   nor(p, q, s);

endmodule // sr_latch
