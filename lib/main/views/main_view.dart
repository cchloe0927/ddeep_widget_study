import 'package:flutter/material.dart';
import 'package:flutter_widget_study/app/modules/root/views/root_view.dart';
import 'package:flutter_widget_study/main/controllers/main_controller.dart';
import 'package:get/get.dart';

class MyApp extends GetView<MainController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// DDEEPWIDGET : GetMaterialApp
    return GetMaterialApp(
      navigatorKey: controller.navigatorKey, //Get 패키지에서 제공하는 네비게이션 키를 설정. 이를 사용하면 전역적으로 앱 내에서 네비게이션을 제어할 수 있습니다.
      scaffoldMessengerKey: controller.scaffoldMessengerKey, // 'ScaffoldMessenger' 를 사용할 때 메시지를 전달하기 위한 키 역할
      // 기본 홈 페이지
      home: const RootView(),
      // 이 앱의 제목(어디서 확인 되는지 모르겠음)
      title: 'D.DEEP STUDY',
      // 기본 테마
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 다크모드 테마
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
      ),
      color: Colors.yellow,

      // onGenerateTitle: ,
      // routes: , // 앱 라우트 목록
      // initialRoute: '/', // 시작할 때 라우트
      // 라우팅 작업을 처리하는데 사용됨, 중첩 라우트를 사용할 때 사용하는 듯 (바텀네비게이션 바 위 페이지, 탭바 페이지 등)
      // onGenerateRoute: (settings) {
      //           if (settings.name == '/sample1') {
      //             return GetPageRoute(
      //               page: () => const Sample1Page(),
      //             );
      //           } else if (settings.name == '/sample2') { // `InsidePage`에 대한 루트 설정.
      //             return GetPageRoute(
      //               page: () => const Sample2Page(),
      //             );
      //           }
      //         }, // 예제 코드
      // onGenerateInitialRoutes: ,
      // onUnknownRoute: ,
      // navigatorObservers: [],
      // builder: ,
      // themeMode: ,
      // customTransition: ,
      // translationsKeys: ,
      // translations: ,
      // textDirection: ,
      // locale: ,
      // fallbackLocale: ,
      // localizationsDelegates: ,
      // localeListResolutionCallback: ,
      // localeResolutionCallback: ,
      // supportedLocales: ,
      // showPerformanceOverlay: ,
      // checkerboardRasterCacheImages: ,
      // checkerboardOffscreenLayers: ,
      // showSemanticsDebugger: ,
      // debugShowCheckedModeBanner: ,
      // shortcuts: ,
      // scrollBehavior: ,
      // highContrastTheme: ,
      // highContrastDarkTheme: ,
      // actions: ,
      // debugShowMaterialGrid: ,
      // routingCallback: ,
      // defaultTransition: ,
      // opaqueRoute: ,
      // onInit: ,
      // onReady: ,
      // onDispose: ,
      // enableLog: ,
      // logWriterCallback: ,
      // popGesture: ,
      // smartManagement: ,
      // initialBinding: ,
      // transitionDuration: ,
      // defaultGlobalState: ,
      // getPages: [],
      // unknownRoute: ,
      // useInheritedMediaQuery: ,
    );
  }
}
