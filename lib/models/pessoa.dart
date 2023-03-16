// _ = private

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;
  double _imc = 0.0;

  Pessoa(this._nome, this._peso, this._altura);

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  double getImc() {
    return _imc;
  }

  void calculateImc() {
    _imc = _peso / (_altura * _altura);
  }

  String getClassificacao() {
    if (_imc < 16) {
      return "Classificação: Magreza grave";
    } else if (_imc < 17) {
      return "Classificação: Magreza moderada";
    } else if (_imc < 18.5) {
      return "Classificação: Magreza leve";
    } else if (_imc < 25) {
      return "Classificação: Saudável";
    } else if (_imc < 30) {
      return "Classificação: Sobrepeso";
    } else if (_imc < 35) {
      return "Classificação: Obesidade Grau 1";
    } else if (_imc < 40) {
      return "Classificação: Obesidade Grau 2 (severa)";
    } else {
      return "Classificação: Obesidade Grau 3 (mórbida)";
    }
  }
}
