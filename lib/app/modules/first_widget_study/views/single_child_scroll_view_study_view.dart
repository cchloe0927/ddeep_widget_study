import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/common/widgets/app_bar/study_page_app_bar.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/controllers/first_widget_study_controller.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_size.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';
import 'package:get/get.dart';

class SingleChildScrollViewStudyView extends GetView<FirstWidgetStudyController> {
  const SingleChildScrollViewStudyView({super.key});
  /// DDEEPWIDGET : SingleChildScrollView


  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstAppColor.unSafeAreaColor,
      child: SafeArea(
        child: Scaffold(
          appBar: const StudyPageAppBar(
            appBarTitleText: ConstAppText.TEXT_FIRST_SINGLE_CHILD_SCROLL_VIEW,
          ),
          body:
          Column(
            children: [
              /// 세로 스크롤
              SizedBox(
                height: 500, // 총 길이
                child: SingleChildScrollView(

                  /// 스크롤 수직,수평 설정 ***
                  scrollDirection: Axis.vertical,
                  // vertical Or horizontal 설정
                  // Axis로 중심선 맞추기 이게 없으면 축이 대각으로 이동할 수 있다.
                  // 지우고 해보려 했는데 계속 오류 ;;

                  /// 시작 스크롤 위치 **
                  reverse: true,
                  // 실행시 스크롤이 제일 위에있냐, 아래에있냐를 선택
                  // Default = false
                  // false는 제일 위에서 시작, true는 제일 뒤에서 시작


                  /// 스크롤 뷰에 여백 부여 **
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 100),
                  // SingleChildScrollView 전체에 padding을 넣어준다.
                  // 위아래로 100의 여백부여
                  // EdgeInsets.all 사용 가능하지만 사용하면 좌우가 줄어든다.
                  // 과도하게 줄이면 Overflow 에러

                  /// 스크롤 최상단 이동 *
                  primary: false,
                  // ios에서만 작동
                  // 상태바를 누르면 스크롤이 최상단으로 이동
                  // 해주세요

                  /// 스크롤 애니메이션 **
                  physics: ClampingScrollPhysics(),
                  // 스크롤이 끝에 도달했을때 애니메이션 효과 선택
                  // BouncingScrollPhysics = 바운스 한다.
                  // AlwaysScrollableScrollPhysics  = 기본
                  // NeverScrollableScrollPhysics = 스크롤 불가능
                  // PageScrollPhysics = 끝까지 가면 멈춤
                  // ClampingScrollPhysics = 기본 (끝에 도착하면 살짝 바운스)
                  // RangeMaintainingScrollPhysics = 기본 (바운스 없음)
                  // 둘의 가장큰파이는  RangeMaintainingScrollPhysics 는 overflow가 생길일 없음

                  /// 스크롤 기능 향상 *
                  dragStartBehavior: DragStartBehavior.start,
                  // 스크롤 동작 시작점을 더욱 정확하게 제어할때 사용
                  // 스크롤 자체가 크게 문제없어서 거의 사용 안할 듯...
                  // 기본은 DragStartBehavior.start 하지만 DragStartBehavior.down가 조금 더 즉각적인 반응을 보인다.

                  /// 스크롤 확장? *
                  clipBehavior: Clip.none,
                  // 클립 동작?
                  // none로 설정하면 화면 끝까지 스크롤 된다.
                  // 기본값은 clipBehavior: Clip.hardEdge,

                  ///키보드 내리기 ***
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
                  // 스크롤 내릴 때 키보드 내릴지 말지 정하는 명령어
                  // 기본값 ScrollViewKeyboardDismissBehavior.manual은 키보드를 내리지 않는다
                  // ScrollViewKeyboardDismissBehavior.onDrag 는 스크롤 할때 키보드 내림


                  ///복원 아이디 **
                  ///앱을 종료하고 실행해도 원하는 위치에서 스크롤을 시작하게 만들 수 있는 기능
                  // restorationId:

                  /// 컨트롤러 ***
                  /// controller의 이동에 대한 로그를 받을 수 있음
                  /// 우리가 원하는 scroll위치로 이동도 할 수 있음
                  /// 애니메니션이 실행되느느 위치 & 특정 위치 등등 활용할 수 잇는 방법이 다양함
                  // controller: _controller,

                    child: Column(
                      // vertical 인데 Row 사용하면 실행은 되지만 화면 밖으로 이미지가 넘쳐나고 Scroll기능 상실 / *** vertical은 Row *** / *** horizontal 은 Colum ***
                      children: [
                        Text("vertical"),
                        _container(150, 150, Colors.amberAccent),
                        _container(150, 150, Colors.blueAccent),
                        _container(150, 150, Colors.redAccent),
                        _container(150, 150, Colors.greenAccent),
                        _container(150, 150, Colors.cyanAccent),
                        _container(150, 150, Colors.black),
                    ],

                  ),
                ),
              ),
              SizedBox(height: 50),  // 중간에 여백

              /// 가로 스크롤
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,  // 수평
                  reverse: false,  // 앞에서 시작
                  padding: EdgeInsets.fromLTRB(100, 0, 100, 0), // left, right에 적용
                  primary: true,
                  physics: RangeMaintainingScrollPhysics(),
                  dragStartBehavior: DragStartBehavior.down,
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    children: [
                      Text("horizontal"),
                      _container(150, 150, Colors.amberAccent),
                      _container(150, 150, Colors.blueAccent),
                      _container(150, 150, Colors.redAccent),
                      _container(150, 150, Colors.greenAccent),
                      _container(150, 150, Colors.cyanAccent),
                      _container(150, 150, Colors.black),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }


  /// 나중에 list 만들 때 이거 적용 시켜보기
  // List<Widget> _listItem() {
  //   List<Widget> widgets = [];
  //   for (int i = 0; i < 10; i++) {
  //     widgets.add(
  //       Container(
  //         margin: const EdgeInsets.all(20),
  //         height: 300,
  //         alignment: Alignment.center,
  //         color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
  //         child: Text(
  //           "$i",
  //           style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
  //         ),
  //       ),
  //     );
  //   }
  //   return widgets;
  // }


  /// 색 설정용
  Container _container(double width, double height, Color colors) => Container(
    width: width,
    height: height,
    color: colors,
  );


  /// controller 설정
  // late ScrollController _controller;
  //
  // void initState() {
  //   _controller = ScrollController();
  //   _controller.addListener(() {
  //     // 스크롤을 할 때 마다 호출
  //
  //     // 스크롤 된 값
  //     print('offset : ${_controller.offset}');
  //
  //     // 스크롤에 대한 여러 정보를 가지고 있습니다.
  //     // 전체 길이, offset, 방향 등
  //     print('position : ${_controller.position}');
  //
  //     // 컨트롤러가 SingleChildScrollView에 연결이 됐는지 안돼는지
  //     _controller.hasClients;
  //   });
  //
  // }
  //
  // void dispose() {
  //   _controller.dispose();
  // }
}
