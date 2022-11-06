import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TipoReativosPage extends StatelessWidget {
  final nome = RxString('João Vitor');
  final isAluno = RxBool(true);
  final qtdCursos = RxInt(2);
  final valorCurso = RxDouble(1400.00);
  final jornadas = RxList(['Jornada Getx', 'Jornada ADF']);
  final aluno = RxMap({'id': 1, 'nome': 'João Vitor', 'tipo': 'Fundador'});

  TipoReativosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tipos reativos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              debugPrint('Montando ID do aluno');
              return Text('ID do aluno: ${aluno['id']}');
            }),
            Obx(() {
              debugPrint('Montando nome do aluno');
              return Text('Nome do aluno: ${aluno['nome']}');
            }),
            Obx(
              () => Column(
                children: jornadas.map(Text.new).toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                aluno['id'] = 20;
              },
              child: const Text('Alterar ID'),
            ),
            ElevatedButton(
              onPressed: () {
                jornadas.assign('Jornada Dart');
              },
              child: const Text('Adicionar jornada'),
            ),
          ],
        ),
      ),
    );
  }
}
