import 'package:flutter/material.dart';
import 'package:flutter_financas/models/Transferencia.dart';

void main() => runApp(BancoApp());

class BancoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          body: FormularioTransferencia(),
        )
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Criando Transferencia"),),
      body: Text("teste"),
    );
  }
}

class ListaTransferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Transferencias'),),
      body: Column(
        children: <Widget>[
              ItemTransferencia(Transferencia(100.00, 2324)),
              ItemTransferencia(Transferencia(231.00, 123123)),
              ItemTransferencia(Transferencia(400.00, 23123)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget{
 final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.conta.toString()),
      ),
    );
  }
}
