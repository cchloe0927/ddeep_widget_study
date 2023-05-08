import 'package:flutter/material.dart';
import 'package:flutter_widget_study/main/bindings/main_binding.dart';
import 'package:flutter_widget_study/main/views/main_view.dart';

void main() {
  MainBinding().dependencies();  //runApp 을 실행할 때 바인딩이 필요한 경우 작성
  runApp(const MyApp());
}

