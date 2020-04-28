import 'package:flutter/material.dart';
import 'package:flutter_financas/models/transferencia.dart';

const _tituloAppBar = 'Transferencias';

class ListaTransferencias extends StatefulWidget {

  final List<Transferencia> _transferencias = List();
  @override
  _ListaTransferenciasState createState() => _ListaTransferenciasState();
}


class _ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(_tituloAppBar),),
      body: ListView.builder(
          itemCount: widget._transferencias.length,
          itemBuilder: (context, indice){
            final transferencia = widget._transferencias[indice];
            return ItemTransferencia(transferencia);
          }),
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
