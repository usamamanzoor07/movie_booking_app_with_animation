import 'package:get/get.dart';
import 'package:movie_booking_app_animation/app/constants.dart';

class HomeController extends GetxController {

  RxBool clicked = false.obs;
  RxInt rIndex = 0.obs;

  final List<String> imagesList = [
    dragon,
    earlyMan,
    guardians,
    spiderMan,
    theCroods,
    turbo,
  ];
  final List<String> nameList = [
    dragonName,
    earlyManName,
    guardiansName,
    spiderManName,
    theCroodsName,
    turboName,
  ];

  final List<String> directorNameList = [
    dragonDirectorName,
    earlyManDirectorName,
    guardiansDirectorName,
    spiderManDirectorName,
    theCroodsDirectorName,
    turboDirectorName,
  ];

  final List<List<String>> castNameList = [
    dragonCastList,
    earlyManCastList,
    guardiansCastList,
    spiderManCastList,
    theCroodsCastList,
    turboCastList,
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
