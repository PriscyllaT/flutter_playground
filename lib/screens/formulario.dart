
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Criando Transferencia"),),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controladorConta,
                style: TextStyle(
                  fontSize: 24.0,
                ),
                decoration: InputDecoration(
                    labelText: "Número da Conta:",
                    hintText: "0000"
                ),
                keyboardType: TextInputType.number,
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controladorValor,
                style: TextStyle(
                  fontSize: 24.0,
                ),
                decoration: InputDecoration(
                    icon: Icon(Icons.monetization_on),
                    labelText: "Valor:",
                    hintText: "00.00"
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            RaisedButton(
              child: Text("Confirmar"),
              onPressed: (){
                debugPrint("Confirmar");
              },
            )
          ],
        )
    );
  }
}

