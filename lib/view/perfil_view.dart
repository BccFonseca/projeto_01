import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../controller/cadastro_controller.dart';

class PerfilView extends StatefulWidget {
  const PerfilView({super.key});

  @override
  State<PerfilView> createState() => _ExibicaoViewState();
}

class _ExibicaoViewState extends State<PerfilView> {
  final ctrl = GetIt.I.get<CadastroController>();

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exibição', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black12,
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 243, 240, 240),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ctrl.limpar();
              //Remover todas as rotas de navegação
              Navigator.pushNamedAndRemoveUntil(
                context,
                'home',
                (Route<dynamic> route) => false,
              );
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 59, 63, 66),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${ctrl.txtNome.text}',
                style: TextStyle(color: Colors.white)),
            Text('E-mail: ${ctrl.txtEmail.text}',
                style: TextStyle(color: Colors.white)),
            Text('Telefone: ${ctrl.txtTelefone.text}',
                style: TextStyle(color: Colors.white)),
            Text('Número de posts:',
                style: TextStyle(color: Colors.white)),
            Text('Quantidade de amigos: ',
                style: TextStyle(color: Colors.white)),
            Text('Data de criação do perfil: ',
                style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}