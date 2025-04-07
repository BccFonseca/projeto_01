import 'package:flutter/material.dart';

class BuscaView extends StatelessWidget {
  const BuscaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Busca', style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 243, 240, 240),
        ),
        backgroundColor: const Color.fromARGB(255, 59, 63, 66),
      ),
      body: Container(
        color: const Color.fromARGB(255, 59, 63, 66),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                style: TextStyle(color: Colors.white), // Cor do texto digitado
                decoration: InputDecoration(
                  labelText: 'Digite sua busca',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  // Lógica para tratar a busca
                  print('Texto digitado: $value');
                },
              ),
              const SizedBox(height: 16), // Espaçamento entre o TextField e o botão
              ElevatedButton(
                onPressed: () {
                  // Lógica para confirmar a busca
                  print('Busca confirmada');
                },
                child: const Text('Buscar', 
                    style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}