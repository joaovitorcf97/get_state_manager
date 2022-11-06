class UsuaModel {
  int id;
  String nome;
  String email;
  String curso;

  UsuaModel({
    required this.id,
    required this.nome,
    required this.email,
    required this.curso,
  });

  UsuaModel copyWith({
    int? id,
    String? nome,
    String? email,
    String? curso,
  }) {
    return UsuaModel(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      email: email ?? this.email,
      curso: curso ?? this.curso,
    );
  }
}
