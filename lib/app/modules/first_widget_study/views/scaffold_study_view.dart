import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_study/app/common/widgets/app_bar/scaffold_study_app_bar.dart';
import 'package:flutter_widget_study/app/modules/first_widget_study/controllers/first_widget_study_controller.dart';
import 'package:flutter_widget_study/constants/const_app_asset_key.dart';
import 'package:flutter_widget_study/constants/const_app_color.dart';
import 'package:flutter_widget_study/constants/const_app_size.dart';
import 'package:flutter_widget_study/constants/const_app_text.dart';
import 'package:get/get.dart';

class ScaffoldStudyView extends GetView<FirstWidgetStudyController> {
  const ScaffoldStudyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstAppColor.unSafeAreaColor,
      child: SafeArea(
        /// DDEEPWIDGET : Scaffold
        child: Scaffold(
          // Key : Scaffold 의 상태를 관리할 수 있음
          // 기본 상태: 앱바와 본문 영역을 포함합니다.
          // 풀스크린 상태: 상태 표시줄과 네비게이션 바를 포함하지 않고 전체 화면을 채웁니다.
          // 부분적으로 풀스크린 상태: 기본 상태에서 앱바와 하단의 도구 모음 버튼을 숨기고, 본문을 최대한 확장합니다.
          // 스낵바 표시 상태: 스낵바를 추가합니다.
          // 보통의 다이얼로그 또는 모달 상태: 중앙에 위치한 모달 창이 나타납니다.
          // 바텀 시트 표시 상태: 바텀 시트가 나타납니다.
          key: controller.scaffoldKey,
          // 앱바(ScaffoldStudyAppBar 에서 추가 설명, 나중에 ^^)
          appBar: const ScaffoldStudyAppBar(
            appBarTitleText: ConstAppText.TEXT_FIRST_SCAFFOLD,
          ),

          // 바디 ( 본문이라고 생각하면 편함 )
          body: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ],
          ),

          /// DDEEPWIDGET : FloatingActionButton
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.printScaffoldInfo();
            },
            child: SvgPicture.asset(
              ConstAppAssetKey.ICON_ADD_OUTLINE,
              width: ConstAppSize.defaultIconSize,
              height: ConstAppSize.defaultIconSize,
              color: Colors.yellow,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
          // 수정

          // floatingActionButton 의 위치를 설정하는 속성
          //floatingActionButtonLocation: FloatingActionButtonLocation.endContained,  여기 endContained가 자꾸 에러나서 주석처리했어요~

          // floatingActionButton 을 눌렀을 때 나오는 애니매이션 효과 속성
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

          // 하단 버튼 ( 약간 바텀 네비게이션 바 느낌 ) 속성
          persistentFooterButtons: [
            TextButton(
              onPressed: () {
                print('하단버튼 1번');
              },
              child: Text('하단버튼 1'),
            ),
            TextButton(
              onPressed: () {
                print('하단버튼 2번');
              },
              child: Text('하단버튼 2'),
            ),
            TextButton(
              onPressed: () {
                print('하단버튼 3번');
              },
              child: Text('하단버튼 3'),
            ),
          ],

          // 하단 버튼 위치 속성
          persistentFooterAlignment: AlignmentDirectional.centerStart,
          // 앱바 leading 위치에 메뉴 생성( 조금 더 알아봐야함 )
          // drawer: Drawer(
          //   child: ListView(
          //     padding: EdgeInsets.zero,
          //     children: [
          //       const DrawerHeader(
          //         decoration: BoxDecoration(
          //           color: Colors.blue,
          //         ),
          //         child: Text(
          //           '예시 페이지',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 24,
          //           ),
          //         ),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.message),
          //         title: Text('리스트 타일 1번'),
          //         onTap: () {
          //           // 메시지 탭 클릭 시 처리할 작업
          //         },
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text('리스트 타일 2번'),
          //         onTap: () {
          //           // 설정 탭 클릭 시 처리할 작업
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          // // drawer 가 열리고 닫힐 때 사용하는 속성
          // onDrawerChanged: (isOpened) {
          //   if (isOpened) {
          //     print('open');
          //   } else {
          //     print('close');
          //   }
          // },
          // 앱바 Action 위치에 메뉴 생성( 조금 더 알아봐야함 )
          endDrawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    '예시 페이지',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('리스트 타일 1번'),
                  onTap: () {
                    // 메시지 탭 클릭 시 처리할 작업
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('리스트 타일 2번'),
                  onTap: () {
                    // 설정 탭 클릭 시 처리할 작업
                  },
                ),
              ],
            ),
          ),

          // // endDrawer 가 열리고 닫힐 때 사용하는 속성
          onEndDrawerChanged: (isOpened) {
            if (isOpened) {
              print('open');
            } else {
              print('close');
            }
          },

          // 바텀 네비게이션 바 위젯 ( 다음에 )
          // bottomNavigationBar: Obx(
          //       () =>
          //       BottomNavigationBar(
          //         // 현재 선택 된 인덱스
          //         currentIndex: controller.scaffoldStudyViewBottomNavBarCurrentIndex.value,
          //         // 그림자 효과
          //         elevation: 20,
          //         // 바텀 네비게이션 타입 지정 속성(fixed,shifting)
          //         type: BottomNavigationBarType.fixed,
          //         // 선택된 라벨 색상에 영향이 가는 속성
          //         // fixedColor: Colors.red,
          //         // 바텀 네비게이션 배경 색상
          //         backgroundColor: ConstAppColor.backgroundColor,
          //         // 아이콘 사이즈 지정(Svg는 적용 안됨 알아봐야함)
          //         iconSize: 40,
          //         // 선택 된 아이템 색상 (fixedColor 랑 같이 사용이 안됨 이유 ?)
          //         selectedItemColor: Colors.indigo,
          //         // 선택이 안 된 아이템 색상
          //         unselectedItemColor: Colors.red,
          //         // 선택 된 아이콘 테마(다음에 알아보도록 하자^^)
          //         // selectedIconTheme: IconThemeData(size: 40, fill: 40.2, weight:, grade:, opticalSize:, color:, opacity:, shadows:,),
          //         // onTap 함수 입력
          //         onTap: (index) {
          //           controller.changeBottomNavIndex(index);
          //         },
          //         items: [
          //
          //           /// DDEEPWIDGET : BottomNavigationBarItem
          //           BottomNavigationBarItem(
          //             // 아이콘
          //             icon: SvgPicture.asset(
          //               ConstAppAssetKey.ICON_CALENDAR_OUTLINE,
          //             ),
          //             // 라벨 (아이콘 하단 텍스트)
          //             label: '캘린더',
          //             // 배경 색상, BottomNavigationBarType에 따라 설정 가능
          //             backgroundColor: Colors.blue,
          //             // 툴팁 텍스트 (꾹 누르니까 나옴)
          //             tooltip: '캘린더 툴 팁',
          //             // 활성화 됐을 때 아이콘
          //             activeIcon: SvgPicture.asset(
          //               ConstAppAssetKey.ICON_HEART_FILL,
          //             ),
          //           ),
          //           BottomNavigationBarItem(
          //             icon: Icon(Icons.search_rounded),
          //             label: '검색',
          //             backgroundColor: Colors.yellow,
          //             tooltip: '검색 툴 팁',
          //             activeIcon: Icon(Icons.search_rounded),
          //           ),
          //           BottomNavigationBarItem(
          //             icon: SvgPicture.asset(
          //               ConstAppAssetKey.ICON_HOME_OUTLINE,
          //             ),
          //             label: '홈',
          //             backgroundColor: Colors.orange,
          //             tooltip: '홈 툴 팁',
          //             activeIcon: SvgPicture.asset(
          //               ConstAppAssetKey.ICON_HEART_FILL,
          //             ),
          //           ),
          //         ],
          //       ),
          // ),

          // 하단 위젯 속성,,,? 스택 느낌
          bottomSheet: Container(
            height: 200,
            width: 200,
            color: Colors.tealAccent,
          ),

          // Scaffold 위젯 배경화면
          backgroundColor: Colors.yellowAccent,

          // 소프트웨어 키보드가 활성화될 때 화면의 크기를 조정할지 여부 기본값은 true 임
          // false 의 경우 인터페이스가 키보드에 가려진다거나 여러 변수가 생길 위험이 있음
          resizeToAvoidBottomInset: true,

          // Material 의 기본 색상과 동일할 경우 true 아니면 false(따로 지정해야함)
          primary: true,

          // 드래그 제스처가 시작될 때 Drawer 가 열리는 방식, 기본값은 'DragStartBehavior.start'
          // DragStartBehavior.start: 드래그 제스처가 시작될 때 즉시 Drawer 가 열림.
          // DragStartBehavior.down : 사용자가 드래그 제스처를 시작한 지점에서 약간의 거리를 이동한 후 Drawer 가 열림. 이 방식은 사용자가 스크롤하려는 경우에 유용함.
          drawerDragStartBehavior: DragStartBehavior.down,

          // body 속성안에 있는 위젯이 bottomNavigationBar 의 영역을 침범할지 여부
          extendBody: false,

          // body 속성안에 있는 위젯이 Appbar 의 영역을 침범할지 여부
          extendBodyBehindAppBar: false,

          // drawer 또는 endDrawer 가 열렸을 때 나머지 화면의 색상(투명도) 조절
          drawerScrimColor: Colors.green.withOpacity(0.5),

          // drawer 제스처를 발생시키는 폭을 조정 기본값은 20.0
          drawerEdgeDragWidth: 20.0,

          // 제스처를 통해 drawer 를 활성화 시킬지 여부 기본값 true
          drawerEnableOpenDragGesture: false,

          // 제스처를 통해 endDrawer 를 활성화 시킬지 여부 기본값 true
          endDrawerEnableOpenDragGesture: false,
        ),
      ),
    );
  }
}
