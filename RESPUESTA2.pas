
//EJERCICIO 2
function menorD(n: Integer): Integer;
var
  digit, maxDigit: Integer;
begin
  digit := 0;
  maxDigit := 0;

  while n > 0 do
  begin
    digit := n mod 10;
    n := n div 10;
    if digit > maxDigit then
    begin
      maxDigit := digit;
    end;
  end;

  menorD := maxDigit;
end;

function mayorD(n: Integer): Integer;
var
  digit, minDigit: Integer;
begin
  digit := 0;
  minDigit := 9;
  while n > 0 do
  begin
    digit := n mod 10;
    n := n div 10;
    if digit < minDigit then
    begin
      minDigit := digit;
    end;
  end;

  mayorD := minDigit;
end;

function ejercicio2(n: Integer): string;
var
  d, MayorPar, MenorImpar, MenorImpar_MayorPar: Integer;
  pp, pi: real;
begin

  MayorPar := 0;
  MenorImpar := 0;
  d := 0;
  while n > 0 do
  begin
    d := n mod 10;
    if d mod 2 = 0 then
    begin
      MayorPar := MayorPar * 10 + d;

    end
    else
    begin
      MenorImpar := MenorImpar * 10 + d;

    end;
    n := n div 10;

  end;

  Result := 'MenorImpar_MayorPar = ' + floatToStr(mayorD(MenorImpar)) +
    floatToStr(menorD(MayorPar));

end;

//LLAMADA

  Edit3.Text := ejercicio2(n);