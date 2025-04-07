import 'package:flutter/material.dart';

class PostarView extends StatelessWidget {
  const PostarView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Postar', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black12,
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
              controller: titleController,
              style: TextStyle(color: Colors.white), // Cor do texto
              decoration: InputDecoration(
                labelText: 'Título',
                labelStyle: TextStyle(color: Colors.white), // Cor do label
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: textController,
              style: TextStyle(color: Colors.white), // Cor do texto
              decoration: InputDecoration(
                labelText: 'Texto',
                labelStyle: TextStyle(color: Colors.white), // Cor do label
                border: OutlineInputBorder(),
              ),
              maxLines: 8,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text;
                final text = textController.text;
                // Adicione a lógica para postar aqui
                print('Título: $title');
                print('Texto: $text');
              },
              child: Text('Postar', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black12,
                padding: EdgeInsets.symmetric(vertical: 16),
              ),  
            ),
          ],
        ),
      ),
    );
  }
}