import 'package:flutter/material.dart';
import 'package:flutter_financas/screens/formulario.dart';
import 'package:flutter_financas/screens/lista.dart';

void main() => runApp(BancoApp());

final TextEditingController _controladorConta = TextEditingController();
final TextEditingController _controladorValor = TextEditingController();

class BancoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          body: ListaTransferencias(),
        )
    );
  }
}
