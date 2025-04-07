import 'package:flutter/material.dart';

class SobreView extends StatelessWidget {
  const SobreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procurar Usuário', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black12, // Define o fundo preto
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 243, 240, 240),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 59, 63, 66),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30),
            Text(
              'Este aplicativo é um projeto que visa implementar a parte visual de um fórum de discussão sobre hardware, onde os usuários podem criar postagens e interagir entre si.',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'O autor é Bruno Celso de Campos Fonseca, aluno da Fatec -RP.',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
           
          ],
        ),
      ),
    );
  }
}