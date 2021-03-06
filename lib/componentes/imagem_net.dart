import 'package:flutter/material.dart';

class ImagemNet extends StatelessWidget {
  ImagemNet({
    Key? key,
    required this.link,
    this.tamanhoLabel,
    this.label,
    required this.cantoArredondado,
  }) : super(key: key);

  final String? link;
  final String? label;
  double? tamanhoLabel;
  double? cantoArredondado;

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
      loadingBuilder: (x, y, z) {
        if (z == null) {
          return y;
        }
        return Center(
          child: CircularProgressIndicator(
            value: z.expectedTotalBytes != null
                ? z.cumulativeBytesLoaded / z.expectedTotalBytes!
                : null,
          ),
        );
      },
    );

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: imagem.image, fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(cantoArredondado!)),
    );
  }
}
