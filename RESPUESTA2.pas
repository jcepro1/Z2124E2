
//EJERCICIO 2

function ejercicio2(n: Integer; k: Integer): Integer;
var
  cad: string;
  resultado: string;
begin
  cad := IntToStr(n);
  k := k + 1;

  if (k <= Length(cad)) and (k > 0) then
    resultado := Copy(cad, k, Length(cad) - k + 1)
  else
    resultado := '';

  if resultado = '' then
    Result := 0
  else
    Result := StrToInt(resultado);
end;

//LLAMADA

Edit3.Text := IntToStr(ejercicio2(n, StrToInt(Edit2.Text)));
