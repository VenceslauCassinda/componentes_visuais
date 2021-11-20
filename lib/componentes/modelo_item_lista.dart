import 'package:flutter/material.dart';

class ModeloItemLista extends StatelessWidget {
  bool? itemRemovivel = false;
  bool? itemAceitavel = false;
  bool? itemComentado = true;
  String? tituloItem;
  String? subTituloItem;
  String? labelSubTituloItem;
  Function? metodoChamadoAoClicarItem;
  Function? metodoChamadoAoClicarLongoItem;
  Function? metodoChamadoAoRemoverItem;
  Function? metodoChamadoAoAceitarItem;
  Color? corIcones;

  ModeloItemLista(
      {this.tituloItem,
      this.itemAceitavel,
      this.itemComentado,
      this.subTituloItem,
      this.itemRemovivel,
      this.metodoChamadoAoClicarItem,
      this.metodoChamadoAoRemoverItem,
      this.metodoChamadoAoAceitarItem,
      this.metodoChamadoAoClicarLongoItem,
      this.labelSubTituloItem,
      this.corIcones}) {
    if (itemAceitavel == null) {
      itemAceitavel = false;
    }
    if (itemRemovivel == null) {
      itemRemovivel = false;
    }
    if (itemComentado == null) {
      itemComentado = true;
    }
    if (labelSubTituloItem == null) {
      labelSubTituloItem = "Email:";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (metodoChamadoAoClicarItem != null) {
          metodoChamadoAoClicarItem!();
        }
      },
      onLongPress: () {
        if (metodoChamadoAoClicarLongoItem != null) {
          metodoChamadoAoClicarLongoItem!();
        }
      },
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  itemComentado == true
                      ? Text("Nome: $tituloItem")
                      : Text("$tituloItem"),
                  Visibility(
                    visible: subTituloItem != null,
                    child: Text("$labelSubTituloItem $subTituloItem"),
                    replacement: Container(),
                  ),
                ],
              ),
              Spacer(),
              Visibility(
                visible: itemRemovivel!,
                child: InkWell(
                    onTap: () {
                      if (metodoChamadoAoRemoverItem != null) {
                        metodoChamadoAoRemoverItem!();
                      }
                    },
                    child: Icon(
                      Icons.delete,
                      color: corIcones,
                    )),
                replacement: Container(),
              ),
              SizedBox(
                width: 10,
              ),
              Visibility(
                visible: itemAceitavel!,
                child: InkWell(
                    onTap: () {
                      if (metodoChamadoAoAceitarItem != null) {
                        metodoChamadoAoAceitarItem!();
                      }
                    },
                    child: Icon(
                      Icons.playlist_add_check,
                      color: corIcones,
                    )),
                replacement: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
