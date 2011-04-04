MODULE record;
TYPE Foo = RECORD
  a:INTEGER;
  b:INTEGER;
END;
TYPE T = RECORD
    val: INTEGER;
    next: T;
END;
TYPE X = ARRAY OF X;


PROCEDURE print(o:REF Foo) =
  BEGIN
    putchar(o.a + o.b + 48);
  END print;

VAR a, b := NEW(REF Foo);
BEGIN
	b.a := 1;
	b.b := 2;
	a:= b;
	print(b);
	print(a);
END record.
(*VAR bar :=NEW(REF Foo);
BEGIN
  bar.a := 5;
  bar.b.a := 2;
  foo(bar);
END record. *)
