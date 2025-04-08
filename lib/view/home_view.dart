import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../controller/cadastro_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  final ctrl = GetIt.I.get<CadastroController>();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.computer,
              color: const Color.fromARGB(255, 219, 223, 221),
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROK55XYkAgryUIoJMpL9iSOly7xnUVo6d6ZAyheqzS9RSdVrY3A3yW0642GXQz-mFpqsM&usqp=CAU',
                  fit: BoxFit.cover,
                )
              ),
              
              SizedBox(height: 10),

              TextFormField(
                controller: ctrl.txtEmail,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.white),
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
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira uma senha';
                  }
                  return null;
                },
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              if (_errorMessage != null)
                Center(
                  child: Text(
                    _errorMessage!,
                    style: TextStyle(color: const Color.fromARGB(255, 243, 96, 82), fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              SizedBox(height: 10),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Simulate login logic
                          setState(() {
                            _errorMessage = null; // Clear error message
                          });
                          Navigator.pushNamed(context, 'principal');
                        } else {
                          setState(() {
                            _errorMessage = 'Erro ao fazer login. Verifique os dados.';
                          });
                        }
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
                    SizedBox(height: 20),
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
                    SizedBox(height: 220),
                    Text(
                      'Não tem uma conta?',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 20),
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
      ),
    );
  }
}
