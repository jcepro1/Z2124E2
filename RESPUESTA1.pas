//--------------------------------------------------
//EJERCICIO 1

function repititivo(b, e: Integer): Integer;
var
  p, c: Integer;
begin
  c := 0;
  p := 1;
  while (e > c) do
  begin
    p := p * b;
    c := c + 1;
  end;
  repititivo := p;
end;

function ejercicio1(n: Integer): real;
var
  s, num, dd, ter, s1: real;
  c2, a, b, f: Integer;
begin
  s := 0;
  a := -2;
  b := 3;

  for c2 := 1 to n do
  begin
    s1 := repititivo(c2, c2);
    num := s1;
    f := a + b;
    a := b;
    b := f;
    dd := f;
    ter := num / dd;
    s := s + ter;
  end;

  Result := s;
end;

//LLAMADA

  Edit3.Text := floatToStr(ejercicio1(n));


