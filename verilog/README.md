- [Level 1](#orgd1345a3)
- [Level 2](#org1a7fc2d)
- [Level 3](#org98eee1b)



<a id="orgd1345a3"></a>

# Level 1


## SR latch

```verilog
module sr_latch(q, p, s, r);

   input  s, r;
   output q, p;

   nor(q, r, p);
   nor(p, q, s);

endmodule // sr_latch
```

```verilog
module sr_latch(q, p, s, r);

   input  s, r;
   output q, p;

   always@(s or r)
	 begin
		q = ~(r | p);
		p = ~(q | s);
	 end

endmodule // sr_latch
```


## JK latch

```verilog
module jk_latch(q, p, j, k);

   input  j,  k;
   output q,  p;
   wire   s,  r;

   and(r, k, q);
   and(s, j, p);
   nor(q, r, p);
   nor(p, s, q);

endmodule
```


<a id="org1a7fc2d"></a>

# Level 2


## SR flip flop

```verilog
module sr_ff(q, p, e, s, r);

   input  s, r, e;
   output q, p;
   wire   si, ri;

   and(si, s, e);
   and(ri, r, e);
   nor(q, ri, p);
   nor(q, si, q);

endmodule
```


## D flip flop

```verilog
module d_ff(q, p, e, d);

   input  d, e;
   output q, p;
   wire   s, r, c;

   not(c, d);
   and(r, c, e);
   and(s, d, e);
   nor(q, r, p);
   nor(p, s, q);

endmodule
```


## JK flip flop

```verilog
module jk_ff(q, p, e, j, k);

   input  j, k, e;
   output q, p;
   wire   S, R;

   and(R, k, e, q);
   and(S, j, e, p);
   nor(q, R, p);
   nor(p, S, q);

endmodule
```


## Earle flip flop

```verilog
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
```


<a id="org98eee1b"></a>

# Level 3


## 3-bit linear feedback shift register

```verilog
module d_ff(q, e, d);

   input  d, e;
   output q;
   wire   s, r, p, c;

   not(c, d);
   and(r, c, e);
   and(s, d, e);
   nor(q, r, p);
   nor(p, s, q);

endmodule

module lfsr_3(q, e);

   output [2:0] q;
   input 		e;
   wire 		d;

   d_ff dff1 (q[0], e, d);
   d_ff dff2 (q[1], e, q[0]);
   d_ff dff3 (q[2], e, q[1]);
   xor(d, q[0], q[2]);

endmodule
```
