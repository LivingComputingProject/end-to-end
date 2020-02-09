module sr_latch(q, s, r);

   input  s, r;
   output q;
   wire   p;

   nor(q, r, p);
   nor(p, q, s);

endmodule

module andrews1(y, a, b, c);

   output y;
   input  a, b, c;
   wire   q1, q2;

   sr_latch sr1(q1, b, a);
   sr_latch sr2(q2, c, a);
   or(y, q1, q2);

endmodule
