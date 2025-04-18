import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'controller/cadastro_controller.dart';
import 'view/cadastro_view.dart';
import 'view/exibicao_view.dart';
import 'view/home_view.dart';
import 'view/esqueceu_senha_view.dart';
import 'view/tela_principal.dart';
import 'view/busca_view.dart';
import 'view/postar_view.dart';
import 'view/perfil_view.dart';
import 'view/procura_usuario_view.dart';
import 'view/sobre_view.dart';
import 'view/postagens_view.dart';

final g = GetIt.instance;

void main() {
  //Registrar o controlador
  g.registerSingleton<CadastroController>(CadastroController());

  runApp(
    DevicePreview(
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeView(),
        'cadastro': (context) => const CadastroView(),
        'exibicao': (context) => const ExibicaoView(),
        'esqueceu': (context) => const EsqueceuSenhaView(),
        'principal': (context) => const TelaPrincipalView(),
        'busca': (context) => const BuscaView(),
        'postar': (context) => const PostarView(),
        'perfil': (context) => const PerfilView(),
        'procura': (context) => const ProcuraUsuarioView(),
        'sobre': (context) => const SobreView(),
        'postagens': (context) => const PostagensView(),
      },      
      
    );
  }
}