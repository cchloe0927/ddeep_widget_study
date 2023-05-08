import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstWidgetStudyController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final RxInt scaffoldStudyViewBottomNavBarCurrentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void printScaffoldInfo() {
    print('scaffoldKey.currentState');
    print(scaffoldKey.currentState.toString());
    print('scaffoldKey.currentWidget');
    print(scaffoldKey.currentWidget);
    print('scaffoldKey.currentContext');
    print(scaffoldKey.currentContext);
  }
  void changeBottomNavIndex(int index) {
    scaffoldStudyViewBottomNavBarCurrentIndex(index);
  }
}
