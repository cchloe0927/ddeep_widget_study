import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/common/widgets/app_bar/study_page_app_bar.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';
import 'package:flutter_widget_study/main/controllers/main_controller.dart';
import 'package:get/get.dart';

class GetMaterialAppStudyView extends GetView<MainController> {
  const GetMaterialAppStudyView({super.key});

  /// DDEEPWIDGET : GetMaterialApp 부가 설명
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstAppColor.unSafeAreaColor,
      child: SafeArea(
        child: Scaffold(
          appBar: const StudyPageAppBar(
            appBarTitleText: ConstAppText.TEXT_FIRST_GET_MATERIALAPP,
          ),
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [Text(controller.scaffoldMessengerKey.toString())],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
