import 'package:flutter_widget_study/app/modules/root/controllers/root_controller.dart';
import 'package:get/get.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RootController>(RootController());
  }
}
