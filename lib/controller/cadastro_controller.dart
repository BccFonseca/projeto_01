import 'package:flutter/material.dart';

// Removed duplicate class definition to resolve the conflict.

class CadastroController extends ChangeNotifier {
  final txtNome = TextEditingController();
  final txtEmail = TextEditingController();

  bool _aceito = false;

  bool get aceito => _aceito;

  void atualizarAceito(value) {
    _aceito = value;
    notifyListeners();
  }

  void limpar() {
    txtNome.clear();
    txtEmail.clear();
    _aceito = false;
    notifyListeners();
  }

  final TextEditingController txtTelefone = TextEditingController();
  final TextEditingController txtSenha = TextEditingController();
  final TextEditingController txtConfirmarSenha = TextEditingController();

  @override
  void dispose() {
    txtNome.dispose();
    txtEmail.dispose();
    txtTelefone.dispose();
    txtSenha.dispose();
    txtConfirmarSenha.dispose();
    super.dispose();
  }
}