import 'package:componentes_visuais/componentes/imagem_net.dart';
import 'package:flutter/material.dart';

class ImagemNoCirculo extends StatelessWidget {
  final Widget widgetImagem;
  final double tamanhoCurva;
  const ImagemNoCirculo(
    this.widgetImagem,
    this.tamanhoCurva, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width * tamanhoCurva,
        width: MediaQuery.of(context).size.width * tamanhoCurva,
        child: CircleAvatar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: widgetImagem,
          ),
          backgroundColor: Colors.grey,
        ));
  }
}
