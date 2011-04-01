MODULE test;
TYPE Obj = OBJECT
  a:INTEGER;
  b:INTEGER;
END;

PROCEDURE foo(o:Obj) =
  BEGIN
    putchar(o.a + o.b + 48);
  END foo;

VAR bar := NEW(Obj);
BEGIN
  bar.a := 4;
  bar.b := 5;
  foo(bar);
END test.
