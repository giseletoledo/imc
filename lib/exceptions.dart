class PesoInvalidoException implements Exception {
  final String mensagem;

  PesoInvalidoException(this.mensagem);

  @override
  String toString() {
    return 'O peso informado é inválido. O peso deve estar entre 0 e 200 kg.';
  }
}

class AlturaInvalidaException implements Exception {
  final String mensagem;

  AlturaInvalidaException(this.mensagem);

  @override
  String toString() {
    return 'A altura informada é inválida. A altura deve estar entre 0 e 2 metros.';
  }
}
