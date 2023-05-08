import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.appBarTitleText});

  final String appBarTitleText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(appBarTitleText),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
