import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/common/widgets/app_bar/study_page_app_bar.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/controllers/first_widget_study_controller.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';
import 'package:get/get.dart';

class SafeAreaStudyView extends GetView<FirstWidgetStudyController> {
  const SafeAreaStudyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstAppColor.unSafeAreaColor,

      ///SafeArea : 안전영역
      //MediaQuery를 통해 앱의 실제 화면 크기를 계산하고 이를 영역으로 삼아 내용을 표시하기 때문에 잘리거나 가려지는 부분 없이 전부 나올수 있게 되는 것
      child: const SafeArea(
        // minimum: EdgeInsets.all(10.0), //padding, margin과 같이 크기 조정할때 자주 사용하는 클래스
        // maintainBottomViewPadding: true,
        // left: true,
        // right: false,
        // bottom: true,
        // top: true,
        child: Scaffold(
          appBar: StudyPageAppBar(
            appBarTitleText: ConstAppText.TEXT_FIRST_SAFE_AREA,
          ),
        ),
      ),
    );
  }
}
