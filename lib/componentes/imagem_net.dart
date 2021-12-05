import 'package:flutter/material.dart';

class ImagemNet extends StatelessWidget {
  ImagemNet({
    Key? key,
    required this.link,
    this.tamanhoLabel,
    this.label,
  }) : super(key: key);

  final String? link;
  final String? label;
  double? tamanhoLabel;

  @override
  Widget build(BuildContext context) {
    if (link == null || link!.isEmpty) {
      return Text(
        label ?? "Sem Imagem",
        style: TextStyle(fontSize: tamanhoLabel),
        textAlign: TextAlign.center,
      );
    }
    var imagem = Image.network(
      link!,
      fit: BoxFit.fill,
      loadingBuilder: (x, y, z) {
        if (z != null) {
          return Padding(
            padding: const EdgeInsets.all(40),
            child: CircularProgressIndicator(),
          );
        }
        return y;
      },
    );

    return ClipRRect(
      child: imagem,
      borderRadius: BorderRadius.circular(20),
    );
  }
}
