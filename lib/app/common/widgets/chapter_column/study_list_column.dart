import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/bindings/first_widget_study_binding.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/views/first_widget_study_view.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_size.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';
import 'package:get/get.dart';

class StudyListColumn extends StatelessWidget {
  const StudyListColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ConstAppSize.defaultHorizontalPaddingGap),
          child: SizedBox(
            width: double.maxFinite,
            child: TextButton(
              onPressed: () {
                Get.to(() => const FirstWidgetStudyView());
              },
              child: Row(
                children: [
                  Text(
                    ConstAppText.TEXT_FIRST_STUDY,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ConstAppSize.studyChapterTextSize,
                      color: ConstAppColor.textColorBlack,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
        Container(height: ConstAppSize.defaultUnderLineHeight, color: ConstAppColor.defaultUnderLineColor),
      ],
    );
  }
}
