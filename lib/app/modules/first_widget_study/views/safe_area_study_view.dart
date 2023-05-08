import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/common/widgets/app_bar/study_page_app_bar.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/controllers/first_widget_study_controller.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_size.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';
import 'package:get/get.dart';

class SafeAreaStudyView extends GetView<FirstWidgetStudyController> {
  const SafeAreaStudyView({super.key});
  /// DDEEPWIDGET : DDEEP(위치에 복붙하고 지우기)

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstAppColor.unSafeAreaColor,
      child: SafeArea(
        child: Scaffold(
          appBar: const StudyPageAppBar(
            appBarTitleText: ConstAppText.TEXT_FIRST_SAFE_AREA,
          ),
        ),
      ),
    );
  }
}
