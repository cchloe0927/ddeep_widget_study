import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/common/widgets/app_bar/study_page_app_bar.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/controllers/first_widget_study_controller.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';
import 'package:get/get.dart';

class ContainerStudyView extends GetView<FirstWidgetStudyController> {
  const ContainerStudyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstAppColor.unSafeAreaColor,
      child: SafeArea(
        child: Scaffold(
          appBar: const StudyPageAppBar(
            appBarTitleText: ConstAppText.TEXT_FIRST_CONTAINER,
          ),

          /// DDEEPWIDGET : Container
          // 자식 위젯을 포함하며 크기를 지정할 수 있음. 자식 위젯이 없거나 크기자 지정되지 않으면 width, height 최댓값으로 고정됌
          body: Container(
            color: Colors.red, //color 색상 지정
            width: 300, //너비
            height: 300, //높이
            alignment: Alignment.center, // 컨테이너 안에 자식 요소 가운데 정렬
            //padding: const EdgeInsets.all(100), //안쪽 여백

            // decoration 안에서 color 지정하니깐 오류 발생
            // decoration: BoxDecoration(
            //   color: Colors.blue,
            //   border: Border.all(
            //     width: 10,
            //   ),
            // ),

            child: const Text(
              '컨테이너',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
