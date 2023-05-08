import 'package:flutter_widget_study/app/modules/first_widget_study/controllers/first_widget_study_controller.dart';
import 'package:get/get.dart';

class FirstWidgetStudyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FirstWidgetStudyController>(FirstWidgetStudyController());
  }
}
