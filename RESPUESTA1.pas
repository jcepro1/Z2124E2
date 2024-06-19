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

function ejercicio1(n: Integer): real;
var
  S, t: real;
  cn, nu, a, b, fib: Integer;

begin
  c := 0;
  cn := 2;
  S := 0;
  a := -1;
  b := 1;

  while (n > c) do
  begin

    nu := cn;

    fib := a + b;
    a := b;
    b := fib;

    t := nu / factorial(fib);

    S := S + t;

    c := c + 1;
    cn := cn + 2;
  end;
  ejercicio1 := S;
end;


//llamada
 Edit3.Text := floatToStr(ejercicio1(n));
