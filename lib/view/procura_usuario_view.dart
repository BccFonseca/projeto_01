import 'package:flutter/material.dart';

class ProcuraUsuarioView extends StatelessWidget {
  const ProcuraUsuarioView({super.key});

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
            TextField(
              style: TextStyle(color: Colors.white), // Texto branco
              decoration: InputDecoration(
                labelText: 'Nome',
                labelStyle: TextStyle(color: Colors.white), // Label branco
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Borda branca
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Borda branca ao focar
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              style: TextStyle(color: Colors.white), // Texto branco
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white), // Label branco
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Borda branca
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Borda branca ao focar
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Informar pelo menos um dos campos para fazer a busca',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Lógica de busca aqui
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Botão branco
                foregroundColor: Colors.black, // Texto do botão preto
              ),
              child: Text('Buscar'),
            ),
          ],
        ),
      ),
    );
  }
}