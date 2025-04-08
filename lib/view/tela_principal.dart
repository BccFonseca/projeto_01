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

  late List<Map<String, dynamic>> menuItems;

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() => setState(() {}));
    menuItems = [
      {
        'icon': Icons.search,
        'title': 'Buscar',
        'route': 'busca',
      },
      {
        'icon': Icons.send,
        'title': 'Postar',
        'route': 'postar',
      },
      {
        'icon': Icons.person,
        'title': 'Perfil',
        'route': 'perfil',
      },
      {
        'icon': Icons.search,
        'title': 'Procurar Usuário',
        'route': 'procura',
      },
      {
        'icon': Icons.refresh,
        'title': 'Atualizar',
        'action': () {
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
      },
      {
        'icon': Icons.info,
        'title': 'Sobre',
        'route': 'sobre',
      },
      {
        'icon': Icons.arrow_back,
        'title': 'Fechar Menu',
        'action': () {
          Navigator.of(context).pop(); // Fecha o Drawer
        },
      },
    ];
  }


  @override
  Widget build(BuildContext context) {
    ctrl.limpar();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: menuItems.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black12,
                ),
                child: const Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              );
            }
            final item = menuItems[index - 1];
            return ListTile(
              leading: Icon(item['icon'], color: Colors.white),
              title: Text(item['title'], style: const TextStyle(color: Colors.white)),
              onTap: () {
                if (item['route'] != null) {
                  Navigator.pushNamed(context, item['route']);
                } else if (item['action'] != null) {
                  item['action']();
                }
              },
            );
          },
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
