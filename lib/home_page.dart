import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed('/basico');
              },
              child: const Text('Básico reatividade'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativos');
              },
              child: const Text('Tipos Reativos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativosGenericos');
              },
              child: const Text('Tipos Reativos Genericos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativosGenericosNulos');
              },
              child: const Text('Tipos Reativos Genericos Nulos'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposObs');
              },
              child: const Text('Tipos Obs'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/atualizacaoObjeto');
              },
              child: const Text('Atualizacao de Objetos'),
            ),
          ],
        ),
      ),
    );
  }
}
