import 'package:get/get.dart';

class TipoReativosEspecificosNulos {
  final nome = Rxn<String>('João Vitor');
  final isAluno = Rxn<bool>(true);
  final qtdCursos = Rxn<int>(2);
  final valorCurso = Rxn<double>(1400.00);

  void teste() {
    isAluno.toggle();
    isAluno.isFalse;
    isAluno.isTrue;
  }
}
