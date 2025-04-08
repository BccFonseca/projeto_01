import 'package:flutter/material.dart';

class PostagensView extends StatelessWidget {
  const PostagensView({super.key});
  
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
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Titulo do post - data do post!',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'postagens');
                },
                child: Text('Ver Post'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
