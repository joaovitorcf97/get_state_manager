import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/tipos/model/aluno.dart';

class TipoObsPage extends StatelessWidget {
  final nome = 'João Vitor'.obs;
  final isAluno = true.obs;
  final qtdCursos = 2.obs;
  final valorCurso = 1400.00.obs;
  final jornadas = ['Jornada Getx', 'Jornada ADF'].obs;

  final aluno = {
    'id': 1,
    'nome': 'João Vitor',
    'tipo': 'Fundador',
  }.obs;

  final alunoModel = Aluno(
    id: 1991,
    nome: 'JoãoVitor',
    email: 'joao@email.com',
    curso: 'flutter ADS',
  ).obs;

  TipoObsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tipos reativos Genericos')),
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
            Obx(() {
              debugPrint('Montando ID do aluno Model');
              return Text('ID do aluno: ${alunoModel.value.id}');
            }),
            Obx(() {
              debugPrint('Montando nome do aluno Model');
              return Text('Nome do aluno: ${alunoModel.value.nome}');
            }),
            Obx(
              () => Column(
                children: jornadas.map(Text.new).toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                aluno['id'] = 20;
                aluno.refresh();
              },
              child: const Text('Alterar ID'),
            ),
            ElevatedButton(
              onPressed: () {
                jornadas.assign('Jornada Dart');
                jornadas.refresh();
              },
              child: const Text('Adicionar jornada'),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel.value = Aluno(
                  id: 2000,
                  nome: 'Vitor',
                  email: 'vitor@email.com',
                  curso: 'ADC',
                );
                jornadas.refresh();
              },
              child: const Text('ALTERAR ALUNO MODEL'),
            ),
          ],
        ),
      ),
    );
  }
}
