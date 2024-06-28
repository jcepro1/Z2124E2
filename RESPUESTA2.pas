
//EJERCICIO 2

function InvertirPalabra(palabra: string): string;
var
  i: Integer;
  invertida: string;
begin
  invertida := '';
  for i := length(palabra) downto 1 do
    invertida := invertida + palabra[i];
  InvertirPalabra := invertida;
end;

function ejercicio2repe(cad: string): string;
var
  i, inicio: Integer;
  palabra, resultado: string;
begin
  resultado := '';
  palabra := '';
  inicio := 1;

  for i := 1 to length(cad) do
  begin
    if cad[i] = ' ' then
    begin
      palabra := Copy(cad, inicio, i - inicio);
      resultado := resultado + InvertirPalabra(palabra) + ' ';
      inicio := i + 1;
    end;
  end;

  palabra := Copy(cad, inicio, length(cad) - inicio + 1);
  resultado := resultado + InvertirPalabra(palabra);

  Result := resultado;
end;
//LLAMADA

  Edit3.Text := ejercicio2repe(cad);
