import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudyPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StudyPageAppBar({super.key, required this.appBarTitleText});

  final String appBarTitleText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Get.back();
        },
      ),
      title: Text(appBarTitleText),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
