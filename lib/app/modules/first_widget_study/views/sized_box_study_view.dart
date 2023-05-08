import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/common/widgets/app_bar/study_page_app_bar.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/controllers/first_widget_study_controller.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';
import 'package:get/get.dart';

class SizedBoxStudyView extends GetView<FirstWidgetStudyController> {
  const SizedBoxStudyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstAppColor.unSafeAreaColor,
      child: SafeArea(
        child: Scaffold(
          appBar: const StudyPageAppBar(
            appBarTitleText: ConstAppText.TEXT_FIRST_SIZED_BOX,
          ),

          /// DDEEPWIDGET : SizedBox

          // 1) Row나 Column과 같은 위젯의 children들 사이에 간격을 두고 싶을때 공백을 두기 위해서 사용함
          body: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              )
            ],
          ),

          // 2) Container, button과 같은 다른 위젯을 child로 두면서 높이와 너비를 고정시키고 싶을때 사용함
          // body: SizedBox(
          //   width: 100,
          //   height: 100,
          //   child: Container(
          //     decoration: const BoxDecoration(
          //       color: Colors.redAccent,
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}

// cf) Container VS SizedBox
// Container의 위젯은 width와 height를 넣지 않으면, 최대 크기로 확장해준다.
// SizedBox 위젯은 width와 height 둘 중 하나라도 설정하지 않으면, 크기는 child의 크기에 알맞게 설정된다.