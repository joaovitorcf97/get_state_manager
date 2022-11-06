import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/atualizacao/usuario_model.dart';

class AtualizacaoObjetos extends StatelessWidget {
  final alunoModel = UsuaModel(
    id: 1,
    nome: 'João Vitor',
    email: 'joao@email.com',
    curso: 'PHP',
  ).obs;

  AtualizacaoObjetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Atualização de Objetos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(alunoModel.value.id.toString())),
            Obx(() => Text(alunoModel.value.nome)),
            Obx(() => Text(alunoModel.value.email)),
            Obx(() => Text(alunoModel.value.curso)),
            ElevatedButton(
              onPressed: () {
                alunoModel.update((aluno) {
                  aluno?.nome = 'Gabriel';
                });
              },
              child: const Text('Atualizando com update'),
            ),
          ],
        ),
      ),
    );
  }
}
