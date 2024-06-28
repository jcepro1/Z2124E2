//ejericico1

function factorial(n: Integer): Integer;

var
  faCT, c: Integer;

begin
  faCT := 1;
  c := 1;
  while (n >= c) do
  begin

    faCT := faCT * c;
    c := c + 1;
  end;

  factorial := faCT;

end;


function ejercicio1repe(n: Integer): real;
var
  suma, nm, dn: real;
  s1, a, b, f: Integer;

begin
  c := 0;
  suma := 0;
  s1 := 1;
  a := -1;
  b := 2;
  while (n > c) do
  begin
    c := c + 1;
    f := a + b;
    a := b;
    b := f;
    suma := suma + factorial(s1) / f;

    s1 := s1 + 2;

  end;
  Result := suma;
end;

//llamada
Edit3.Text := floatToStr(ejercicio1repe(n));
