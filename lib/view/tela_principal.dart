import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../controller/cadastro_controller.dart';

class TelaPrincipalView extends StatefulWidget {
  const TelaPrincipalView({Key? key}) : super(key: key);

  @override
  _TelaPrincipalView createState() => _TelaPrincipalView();
}

class _TelaPrincipalView extends State<TelaPrincipalView> {
  final ctrl = GetIt.I.get<CadastroController>();

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    ctrl.limpar();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // Habilita o botão de menu
        title: Text(
          'Bem-vindo',
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black12,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 243, 240, 240),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              ctrl.limpar();
              Navigator.pushNamedAndRemoveUntil(
                context,
                'home',
                (Route<dynamic> route) => false,
              );
            },
            icon: const Icon(Icons.exit_to_app, color: Colors.white),
            label: const Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 59, 63, 66),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 59, 63, 66),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black12,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.search, color: Colors.white),
              title: const Text('Buscar', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, 'busca');
                // Ação para "Buscar"
              },
            ),
            ListTile(
              leading: Icon(Icons.send, color: Colors.white),
              title: const Text('Postar', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, 'postar');
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: const Text('Perfil', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, 'perfil');
              },
            ),
            ListTile(
              leading: Icon(Icons.search, color: Colors.white),
              title: const Text('Procurar Usuário', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, 'procura');
              },
            ),
            ListTile(
              leading: Icon(Icons.refresh, color: Colors.white),
              title: const Text('Atualizar', style: TextStyle(color: Colors.white)),
              onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TelaPrincipalView()),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                content: Text('Tela Principal atualizada!'),
                ),
              );
              },
            ),
            ListTile(
              leading: Icon(Icons.info , color: Colors.white),
              title: const Text('Sobre', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, 'sobre');
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back, color: Colors.white),
              title: const Text('Fechar Menu', style: TextStyle(color: Colors.white)),
              onTap: () {
              Navigator.of(context).pop(); // Fecha o Drawer
          
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo à Tela Principal!',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
