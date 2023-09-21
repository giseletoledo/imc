import 'dart:io';

import 'package:imc/pessoa.dart';

void main() {
  try {
    stdout.write("Digite o nome da pessoa: ");
    // Lê o nome da pessoa da entrada padrão
    String nome = stdin.readLineSync() ?? '';

    stdout.write("Digite o peso da pessoa (em kg): ");
    // Lê o peso da pessoa da entrada padrão
    String pesoStr = stdin.readLineSync() ?? '';
    double peso = double.parse(pesoStr);

    stdout.write("Digite a altura da pessoa (em metros): ");
    // Lê a altura da pessoa da entrada padrão
    String alturaStr = stdin.readLineSync() ?? '';
    double altura = double.parse(alturaStr);

    // Cria uma instância da classe Pessoa
    Pessoa pessoa = Pessoa(nome, peso, altura);

    // Calcula o IMC da pessoa
    double imc = pessoa.calcularIMC();

    print("O IMC de $nome é $imc");
  } catch (e) {
    print("Erro: $e");
  }
}
