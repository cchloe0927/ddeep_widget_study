import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/common/widgets/app_bar/main_app_bar.dart';
import 'package:flutter_widget_study/app/common/widgets/chapter_column/study_list_column.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstAppColor.unSafeAreaColor,
      child: SafeArea(
        child: Scaffold(
          appBar: const MainAppBar(appBarTitleText: ConstAppText.NAME_DDEEP),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: ConstAppColor.backgroundColor,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  StudyListColumn(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
