import 'package:componentes_visuais/layouts/layout_carregando_circualr.dart';
import 'package:componentes_visuais/layouts/layout_informacao.dart';
import 'package:get/get.dart';

mostrarCarregandoDialogoDeInformacao(String informacao, [bool? fechavel]) {
  fecharDialogoCasoAberto();
  Get.defaultDialog(
      barrierDismissible: fechavel == null ? false : true,
      title: "",
      content: LayoutCarregandoCircrular(informacao));
}

mostrarDialogoDeInformacao(String informacao,
    [bool? fechavel, Function? accaoNaNovaTentativa]) {
  fecharDialogoCasoAberto();
  Get.defaultDialog(
      barrierDismissible: fechavel ?? true,
      title: "",
      content: LayoutInformacao(informacao, accaoNaNovaTentativa));
}

void fecharDialogoCasoAberto() {
  var teste = Get.isDialogOpen;
  bool avaliacao = teste == null ? false : Get.isDialogOpen!;
  if (avaliacao == true) {
    Get.back();
  }
}
