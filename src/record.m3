MODULE test;
TYPE Foo = RECORD
  a:INTEGER;
  b:INTEGER;
END;

PROCEDURE foo(o:REF Foo) =
  BEGIN
    putchar(o.a + o.b + 48);
  END foo;

VAR bar := NEW(REF Foo);
BEGIN
  bar.a := 4;
  bar.b := 5;
  foo(bar);
END test.

