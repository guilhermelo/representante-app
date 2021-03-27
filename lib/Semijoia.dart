class Semijoia {
  String codigo;
  String descricao;
  double preco;

  Semijoia.of(String codigo, String descricao, double preco) {
    this.codigo = codigo;
    this.descricao = descricao;
    this.preco = preco;
  }
}