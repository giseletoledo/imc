import 'package:imc/exceptions.dart';
import 'package:imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Testes da classe Pessoa:', () {
    test('Altura e peso válidos devem passar', () {
      final pessoa = Pessoa('Alice', 60, 1.70);
      expect(() => pessoa.calcularIMC(), returnsNormally);
    });

    /*  test('Peso válido e altura inválida deve falhar', () {
      final pessoa = Pessoa('Bob', 80, 2.10); // Altura inválida
      expect(
          () => pessoa.calcularIMC(), throwsA(isA<AlturaInvalidaException>()));
    }); */

    test('Peso inválido e altura válida deve falhar', () {
      final pessoa = Pessoa('Carol', 220, 1.75); // Peso inválido
      expect(() => pessoa.calcularIMC(), throwsA(isA<PesoInvalidoException>()));
    });

    /* test('Peso e altura inválidos devem falhar', () {
      final pessoa = Pessoa('David', 220, 2.10); // Peso e altura inválidos
      expect(
          () => pessoa.calcularIMC(), throwsA(isA<AlturaInvalidaException>()));
    }); */

    test('Cálculo de IMC correto', () {
      final pessoa = Pessoa('Eva', 70, 1.75);
      final imc = pessoa.calcularIMC();
      expect(
          imc, closeTo(22.86, 0.01)); // O IMC esperado é aproximadamente 22.86
    });
  });
}
