MODULE test;
TYPE Foo = OBJECT
  a:INTEGER;
  b:Foo;
END;

PROCEDURE foo(o:Foo) =
  BEGIN
    putchar(o.a + o.b.a + 48);
  END foo;

VAR bar := NEW(Foo);
BEGIN
  bar.a := 4;
  bar.b.a := 5;
  foo(bar);
END test.
