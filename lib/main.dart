import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/atualizacao/atualizacao_objetos_page.dart';
import 'package:get_state_manager/basico/reatividade_page.dart';
import 'package:get_state_manager/home_page.dart';
import 'package:get_state_manager/tipos/tipos_obs_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_genericos_nulos_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_genericos_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/basico', page: () => ReatividadePage()),
        GetPage(name: '/tiposReativos', page: () => TipoReativosPage()),
        GetPage(
          name: '/tiposReativosGenericos',
          page: () => TipoReativosGenericosPage(),
        ),
        GetPage(
          name: '/tiposReativosGenericosNulos',
          page: () => TipoReativosGenericosNulosPage(),
        ),
        GetPage(name: '/tiposObs', page: () => TipoObsPage()),
        GetPage(
          name: '/atualizacaoObjeto',
          page: () => AtualizacaoObjetos(),
        ),
      ],
    );
  }
}
