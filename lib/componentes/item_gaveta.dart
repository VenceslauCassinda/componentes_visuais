import 'package:flutter/material.dart';

class ItemDaGaveta extends StatelessWidget {
  IconData icone;
  String titulo;
  Function metodoQuandoItemClicado;
  ItemDaGaveta({
    required this.metodoQuandoItemClicado,
    required this.icone,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(20),
      onPressed: () {
        metodoQuandoItemClicado();
      },
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Icon(icone),
          SizedBox(
            width: 20,
          ),
          Text("$titulo"),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}