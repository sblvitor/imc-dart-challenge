import 'package:imc_app/models/pessoa.dart';
import 'package:imc_app/functions/utils.dart' as utils;

void execute() {
  var nome = utils.printTextAndReadConsole("Qual seu nome?");
  var peso =
      utils.printTextAndReadConsoleDouble("Informe seu peso em kg (ex: 72.4):");
  var altura = utils
      .printTextAndReadConsoleDouble("Informe sua altura em metros(ex: 1.85):");

  Pessoa pessoa = Pessoa(nome, peso, altura);
  pessoa.calculateImc();
  print("${pessoa.getNome()}, seu IMC: ${pessoa.getImc().toStringAsFixed(2)}");
  print(pessoa.getClassificacao());
}
