MODULE record;
TYPE Foo = RECORD
  a:INTEGER;
  b:Foo;
END;
Type T = RECORD
    val: INTEGER;
     next: T;
END;



PROCEDURE foo(o:REF Foo) =
  BEGIN
    putchar(o.a + o.b.a + 48);
  END foo;

VAR bar := NEW(REF Foo);
BEGIN
  bar.a := 5;
  bar.b.a := 2;
  foo(bar);
END record. 
