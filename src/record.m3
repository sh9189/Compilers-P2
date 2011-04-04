MODULE record;
TYPE Foo = REF RECORD
  a:INTEGER;
  b:INTEGER;
END;

TYPE T = RECORD
    val: INTEGER;
    next: Foo;
END;

TYPE F = REF RECORD
	a:INTEGER;
	b:Foo;
END;
PROCEDURE print2(o:F) =
  BEGIN
    putchar(o.a + o.b.a + o.b.b + 48);
END print2;



PROCEDURE print(o:Foo) =
  BEGIN
    putchar(o.a + o.b + 48);
END print;
(*
VAR a := NEW(REF Foo);
VAR b := NEW(REF Foo);
*)
VAR a,b : T;
VAR c,d : Foo;
VAR e,f := NEW(REF Foo);
VAR g := NEW(F);
BEGIN
	g.b:=NEW(Foo);
	g.a:=1;
	g.b.a:=2;
	g.b.b:=3;
	print2(g);
(*	e.a:=1;
	e.b:=2;
	print(e);
	b.val := 2;
	b.next.b := 4;
    b.next.a := 5;
	
	putchar(b.next.a+48);
	putchar(b.next.b+48);
	putchar(10);
	a:=b;
	putchar(b.next.a+48);
	putchar(b.next.b+48);
	putchar(a.next.a+48);
	putchar(a.next.b+48);
	putchar(10);	
	b.next.a := 7;
	b.next.b := 8;
	putchar(b.next.a+48);
	putchar(b.next.b+48);
	putchar(a.next.a+48);
	putchar(a.next.b+48);

	c.a := 1;
	c.b := 2;
	d:=b.next;
	putchar(c.a+48);
	putchar(c.b+48);	
	putchar(d.a+48);
	putchar(d.b+48);
	c.a := 3;
	c.b := 4;
	putchar(c.a+48);
	putchar(c.b+48);	
	putchar(d.a+48);
	putchar(d.b+48);
*)

END record.

(*VAR bar :=NEW(REF Foo);
BEGIN
  bar.a := 5;
  bar.b.a := 2;
  foo(bar);
END record. *)
