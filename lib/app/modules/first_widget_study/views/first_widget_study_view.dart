import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/common/widgets/app_bar/study_page_app_bar.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/bindings/first_widget_study_binding.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/views/container_study_view.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/views/get_material_app_study_view.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/views/safe_area_study_view.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/views/scaffold_study_view.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/views/single_child_scroll_view_study_view.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/views/sized_box_study_view.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_size.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';
import 'package:flutter_widget_study/main/bindings/main_binding.dart';
import 'package:get/get.dart';

class FirstWidgetStudyView extends StatelessWidget {
  const FirstWidgetStudyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstAppColor.unSafeAreaColor,
      child: SafeArea(
        child: Scaffold(
          appBar: const StudyPageAppBar(
            appBarTitleText: ConstAppText.TEXT_FIRST_STUDY,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ConstAppSize.defaultVerticalPaddingGap),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: ConstAppSize.defaultHorizontalPaddingGap),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.to(() => const SafeAreaStudyView(), binding: FirstWidgetStudyBinding());
                        },
                        child: Row(
                          children: [
                            Text(
                              'SafeArea (현정)',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: ConstAppSize.studyChapterItemTextSize,
                                color: ConstAppColor.textColorGrey,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          /// 현정 페이지 이동 (돌아가기는 Get.back();)
                          Get.to(() => const ContainerStudyView(), binding: FirstWidgetStudyBinding());
                        },
                        child: Row(
                          children: [
                            Text(
                              'Container (현정)',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: ConstAppSize.studyChapterItemTextSize,
                                color: ConstAppColor.textColorGrey,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const SizedBoxStudyView(), binding: FirstWidgetStudyBinding());
                        },
                        child: Row(
                          children: [
                            Text(
                              'SizedBox (현정)',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: ConstAppSize.studyChapterItemTextSize,
                                color: ConstAppColor.textColorGrey,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const GetMaterialAppStudyView(), binding: MainBinding());
                        },
                        child: Row(
                          children: [
                            Text(
                              'GetMaterialApp (승민)',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: ConstAppSize.studyChapterItemTextSize,
                                color: ConstAppColor.textColorGrey,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const ScaffoldStudyView(), binding: FirstWidgetStudyBinding());
                        },
                        child: Row(
                          children: [
                            Text(
                              'Scaffold (승민)',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: ConstAppSize.studyChapterItemTextSize,
                                color: ConstAppColor.textColorGrey,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const SingleChildScrollViewStudyView(), binding: FirstWidgetStudyBinding());

                        },
                        child: Row(
                          children: [
                            Text(
                              'SingleChildScrollView (현석)',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: ConstAppSize.studyChapterItemTextSize,
                                color: ConstAppColor.textColorGrey,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      SizedBox(height: ConstAppSize.lVerticalPaddingGap),
                      const Text(
                        'GetMaterialApp 의 경우에는 main에서 설명',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
