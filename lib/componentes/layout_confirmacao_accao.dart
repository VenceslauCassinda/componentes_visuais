import 'package:flutter/material.dart';

import 'butoes.dart';

class LayoutConfirmacaoAccao extends StatelessWidget {
  final Function accaoAoConfirmar;
  final Function accaoAoCancelar;
  final String pergunta;
  LayoutConfirmacaoAccao(
      {required this.pergunta,
      required this.accaoAoConfirmar,
      required this.accaoAoCancelar});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
        child: Column(
          children: [
            Text(
              pergunta,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ModeloButao(
                    tituloButao: "Sim",
                    metodoChamadoNoClique: accaoAoConfirmar,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ModeloButao(
                    butaoHabilitado: true,
                    tituloButao: "Cancelar",
                    metodoChamadoNoClique: accaoAoCancelar,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
