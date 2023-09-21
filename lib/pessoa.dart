import 'package:imc/exceptions.dart';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    // Verifica se os valores do peso e da altura são nulos ou inválidos
    validarPesoAltura(peso, altura);

    return peso / (altura * altura);
  }

  // Verifica se os valores do peso e da altura são nulos ou inválidos
  void validarPesoAltura(double peso, double altura) {
    if (peso <= 0 || peso > 200) {
      throw PesoInvalidoException('Peso fora do intervalo válido (0-200 kg)');
    }

    if (altura <= 0 || altura > 2) {
      throw AlturaInvalidaException(
          'Altura fora do intervalo válido (0-2 metros)');
    }
  }
}
