import 'package:componentes_visuais/componentes/imagem_net.dart';
import 'package:flutter/material.dart';

class CabecalhoGaveta extends StatelessWidget {
  final String linkImagem;

  const CabecalhoGaveta({Key? key, required this.linkImagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool mostrarIcone = true;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 50),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(120.0)),
                child: (mostrarIcone == true)
                    ? Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.white,
                      )
                    : ImagemNet(link: linkImagem, cantoArredondado: 0))),
      ],
    );
  }
}
