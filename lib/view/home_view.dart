import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
        Icon(
          Icons.computer,
          color: const Color.fromARGB(255, 5, 99, 55),
        ),
        SizedBox(width: 10),
        Text(
          'FORUM DO HARDWARE',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: const Color.fromARGB(255, 5, 99, 55),
            fontWeight: FontWeight.bold,
          ),
        ),
          ],
        ),
        backgroundColor: Colors.black12,
      ),
      backgroundColor: const Color.fromARGB(255, 59, 63, 66),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'Login');
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50), // Aumenta o tamanho do botão
                    ),
                    child: Text(
                      'login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                
                  SizedBox(height: 30),
                  
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'esqueceu');
                    },
                    child: Text(
                      'esqueci a senha',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ),
                  SizedBox(height: 340),
                  Text(
                    'Não tem uma conta?',
                    style: TextStyle(color: Colors.white),
                  ),
                  
                  SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'cadastro');
                    },
                    child: Text(
                      'cadastrar-se',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
