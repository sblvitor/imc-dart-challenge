import 'package:imc_app/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('IMC Equal', () {
    var pessoa = Pessoa("Vitor", 84.4, 1.68);
    pessoa.calculateImc();
    var imc = pessoa.getImc();
    expect(imc.toStringAsFixed(2), equals("29.90"));
  });

  test('IMC Range Sobrepeso', () {
    var pessoa = Pessoa("Vitor", 84.4, 1.68);
    pessoa.calculateImc();
    var imc = pessoa.getImc();
    expect(imc, inClosedOpenRange(25, 30));
  });

  test('IMC Range Saudavel', () {
    var pessoa = Pessoa("Vitor", 50.0, 1.48);
    pessoa.calculateImc();
    var imc = pessoa.getImc();
    expect(imc, inClosedOpenRange(18.5, 25));
  });

  test('Get Classificacao', () {
    var pessoa = Pessoa("Vitor", 95.4, 1.97);
    pessoa.calculateImc();
    expect(pessoa.getClassificacao(), "Classificação: Saudável");
  });
}
