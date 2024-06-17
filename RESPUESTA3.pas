//EJERCICIO 3

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

function InvertirUltimaPalabraEnCadena(cad: string): string;
var
  i, inicioUltimaPalabra: Integer;
  ultimaPalabra, resultado: string;
begin

  i := length(cad);
  while (i > 0) and (cad[i] = ' ') do
    Dec(i);

  inicioUltimaPalabra := i;
  while (inicioUltimaPalabra > 0) and (cad[inicioUltimaPalabra] <> ' ') do
    Dec(inicioUltimaPalabra);

  if cad[inicioUltimaPalabra] = ' ' then
    Inc(inicioUltimaPalabra);

  ultimaPalabra := Copy(cad, inicioUltimaPalabra,
    length(cad) - inicioUltimaPalabra + 1);

  ultimaPalabra := InvertirPalabra(ultimaPalabra);

  resultado := Copy(cad, 1, inicioUltimaPalabra - 1) + ultimaPalabra;

  InvertirUltimaPalabraEnCadena := resultado;
end;
//LLAMADA
Edit3.Text := InvertirUltimaPalabraEnCadena(cad);


