import 'dart:convert';
import 'dart:io';

String readConsole() {
  return stdin.readLineSync(encoding: utf8) ?? "";
}

String printTextAndReadConsole(String texto) {
  print(texto);
  return readConsole();
}

double printTextAndReadConsoleDouble(String texto) {
  double? numero;
  do {
    numero = double.tryParse(printTextAndReadConsole(texto));
    if (numero == null || numero <= 0) {
      print("Numero inválido. Informe novamente!");
    }
  } while (numero == null || numero <= 0);

  return numero;
}
