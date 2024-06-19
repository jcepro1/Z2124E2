//EJERCICIO 3
function ejercicio3(cad: string): string;
var
  i: byte;
  car, suma: string;
begin
  car := '';
  suma := '';
  cad := ' ' + cad;
  for i := 1 to n - 1 do
  begin
    if cad[i] = ' ' then
    begin
      car := UpCase(cad[i + 1]);
      suma := suma + car;
    end
    else
    begin
      suma := suma + cad[i + 1];
    end;
  end;

  Result := suma;
end;

//LLAMADA
 Edit3.Text := ejercicio3(cad);


