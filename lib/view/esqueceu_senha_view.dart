import 'package:flutter/material.dart';

class EsqueceuSenhaView extends StatelessWidget {
  const EsqueceuSenhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recuperar Senha',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: const Color.fromARGB(255, 5, 99, 55),
            fontWeight: FontWeight.bold,
          ),
        ),
          iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 243, 240, 240), // Altere para a cor que quiser
        ),
        backgroundColor: Colors.black12,
      ),
      backgroundColor: const Color.fromARGB(255, 59, 63, 66),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Digite seu e-mail para recuperar sua senha:',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira um email';
                }
                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Por favor, insira um email válido';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Lógica para recuperação de senha
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('E-mail de recuperação enviado!')),
                );
              },
              child: Text('Enviar', 
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}