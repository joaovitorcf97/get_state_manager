import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/tipos/model/aluno.dart';

class TipoReativosGenericosNulosPage extends StatelessWidget {
  final nome = Rxn<String>('João Vitor');
  final isAluno = Rxn<bool>(true);
  final qtdCursos = Rxn<int>(2);
  final valorCurso = Rxn<double>(1400.00);
  final jornadas = Rxn<List<String>>(['Jornada Getx', 'Jornada ADF']);
  final aluno = Rxn<Map<String, dynamic>>({
    'id': 1,
    'nome': 'João Vitor',
    'tipo': 'Fundador',
  });

  final alunoModel = Rx<Aluno>(Aluno(
    id: 1991,
    nome: 'JoãoVitor',
    email: 'joao@email.com',
    curso: 'flutter ADS',
  ));

  TipoReativosGenericosNulosPage({super.key});

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
              return Text('ID do aluno: ${aluno.value?['id']}');
            }),
            Obx(() {
              debugPrint('Montando nome do aluno');
              return Text('Nome do aluno: ${aluno.value?['nome']}');
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
                children: jornadas.value!.map(Text.new).toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                aluno.value?['id'] = 20;
                aluno.refresh();
              },
              child: const Text('Alterar ID'),
            ),
            ElevatedButton(
              onPressed: () {
                jornadas.value!.assign('Jornada Dart');
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
