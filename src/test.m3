MODULE test;
TYPE Foo = OBJECT
  a:INTEGER;
  b:INTEGER;
END;

PROCEDURE foo(o:Foo) =
  BEGIN
    putchar(o.a + o.b + 48);
  END foo;

VAR bar := NEW(Foo);
BEGIN
  bar.a := 4;
  bar.b := 5;
  foo(bar);
END test.
