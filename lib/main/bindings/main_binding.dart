import 'package:flutter_widget_study/main/controllers/main_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {


  @override
  void dependencies() {
    Get.put<MainController>(MainController());
  }}