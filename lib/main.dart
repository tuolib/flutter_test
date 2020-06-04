import 'package:flutter/material.dart';

import 'page/MyHomePage.dart';

import 'page/text_word.dart';
import 'page/NewRoute.dart';
import 'page/TipRoute.dart';
import 'page/RouterTestRoute.dart';
import 'page/LearnButton.dart' as LearnButtonPage;
import 'page/LearnImage.dart' as LearnImagePage;
import 'page/LearnIcon.dart' as LearnIconPage;
import 'page/LearnRadio.dart' as LearnRadioPage;
import 'page/LearnTextarea.dart' as LearnTextareaPage;

//import 'page/LearnTextareaFocus.dart' as LearnTextareaFocusPage;
import 'page/FormTestRoute.dart' as FormTestRoute;
import 'page/LearnProgressIndicator.dart' as LearnProgressIndicator;
import 'page/CenterColumnRoute.dart' as CenterColumnRoute;
import 'page/FlexLayoutTestRoute.dart' as FlexLayoutTestRoute;
import 'page/StackLayoutRoute.dart' as StackLayoutRoute;
import 'page/AlignLayoutRoute.dart' as AlignLayoutRoute;
import 'page/PaddingTestRoute.dart' as PaddingTestRoute;
import 'page/ConstrainedBoxRoute.dart' as ConstrainedBoxRoute;
import 'page/DecoratedBoxRoute.dart' as DecoratedBoxRoute;
import 'page/TransformRoute.dart' as TransformRoute;
import 'page/ContainerRoute.dart' as ContainerRoute;
import 'page/ScaffoldRoute.dart' as ScaffoldRoute;
import 'page/ClipTestRoute.dart' as ClipTestRoute;
import 'page/SingleChildScrollViewTestRoute.dart';
import 'page/ListViewRoute.dart';
import 'page/ListViewInfiniteRoute.dart';
import 'page/GridViewRoute.dart';
import 'page/CustomScrollViewRoute.dart';
import 'page/ScrollListenRoute.dart';

//import 'page/ScrollListenRouteTwo.dart';
import 'page/WillPopScopeTestRoute.dart';
import 'page/InheritedWidgetTestRoute.dart';
import 'page/ProviderRoute.dart';
import 'page/ThemeTestRoute.dart';
import 'page/DialogTestRoute.dart';
import 'page/ListenerTestRoute.dart';
import 'page/GestureDetectorTestRoute.dart';
import 'page/GestureDetectorTestRoute2.dart';
import 'page/GestureDetectorTestRoute3.dart';
import 'page/GestureDetectorTestRoute4.dart';
import 'page/NotificationRoute.dart';
import 'page/ScaleAnimationRoute.dart';

//import 'page/ScaleAnimationRoute2.dart';
import 'page/CustomerPageRoute.dart';
import 'page/HeroAnimationRoute.dart';
import 'page/StaggerRoute.dart';
import 'page/AnimateWidgetsTest.dart';
import 'page/GradientButtonRoute.dart';
import 'page/TurnBoxRoute.dart';
import 'page/CustomPaintRoute.dart';
import 'page/GradientCircularProgressRoute.dart';
import 'page/FileOperationRoute.dart';
import 'page/HttpTestRoute.dart';
import 'page/FutureBuilderRoute.dart';
import 'page/WebSocketRoute.dart';

//import 'package:camera/camera.dart';
//import 'common.dart';
import 'page/PlatformViewRoute.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
//  Doctor doctor = Doctor("Harish Chandra", 54, 'child');
//  print(doctor.name);
//  print(doctor.age);
//  doctor.about();
  runApp(MyApp());
//  cameras = await availableCameras();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo1',
      locale: const Locale('en', 'US'),
      localizationsDelegates: [
        // 本地化的代理类
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // 美国英语
        const Locale('zh', 'CN'), // 中文简体
        //其它Locales
      ],
      //名为"/"的路由作为应用的home(首页)
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

      initialRoute: "/",
      //注册路由表
      routes: {
//        "new_page": (context) => NewRoute(),
        //注册首页路由
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        'NewRoute': (context) => NewRoute(),
        'RouterTestRoute': (context) => RouterTestRoute(),
        'textAndWord': (context) => TextAndWord(),
        'learnButton': (context) => LearnButtonPage.LearnButton(),
        'LearnImage': (context) => LearnImagePage.LearnImage(),
        'LearnIcon': (context) => LearnIconPage.LearnIcon(),
        'LearnRadio': (context) => LearnRadioPage.LearnRadio(),
        'LearnTextarea': (context) => LearnTextareaPage.LearnTextarea(),
//        'LearnTextareaFocus': (context) => LearnTextareaFocusPage.LearnTextareaFocus(),
        'FormTestRoute': (context) => FormTestRoute.FormTestRoute(),
        'LearnProgressIndicator': (context) =>
            LearnProgressIndicator.LearnProgressIndicator(),
        'LearnProgressIndicatorAnimation': (context) =>
            LearnProgressIndicator.ProgressRoute(),
        'CenterColumnRoute': (context) => CenterColumnRoute.CenterColumnRoute(),
        'FlexLayoutTestRoute': (context) =>
            FlexLayoutTestRoute.FlexLayoutTestRoute(),
        'StackLayoutRoute': (context) => StackLayoutRoute.StackLayoutRoute(),
        'AlignLayoutRoute': (context) => AlignLayoutRoute.AlignLayoutRoute(),
        'PaddingTestRoute': (context) => PaddingTestRoute.PaddingTestRoute(),
        'ConstrainedBoxRoute': (context) =>
            ConstrainedBoxRoute.ConstrainedBoxRoute(),
        'DecoratedBoxRoute': (context) => DecoratedBoxRoute.DecoratedBoxRoute(),
        'TransformRoute': (context) => TransformRoute.TransformRoute(),
        'ContainerRoute': (context) => ContainerRoute.ContainerRoute(),
        'ScaffoldRoute': (context) => ScaffoldRoute.ScaffoldRoute(),
        'ClipTestRoute': (context) => ClipTestRoute.ClipTestRoute(),
        "SingleChildScrollViewTestRoute": (context) =>
            SingleChildScrollViewTestRoute(),
        'ListViewRoute': (context) => ListViewRoute(),
        "ListViewInfiniteRoute": (context) => ListViewInfiniteRoute(),
        'GridViewRoute': (context) => GridViewRoute(),
        'CustomScrollViewRoute': (context) => CustomScrollViewRoute(),
        'ScrollListenRoute': (context) => ScrollListenRoute(),
//        'ScrollListenRouteTwo': (context) => ScrollNotificationTestRoute(),
        'WillPopScopeTestRoute': (context) => WillPopScopeTestRoute(),
        'InheritedWidgetTestRoute': (context) => InheritedWidgetTestRoute(),
        'ProviderRoute': (context) => ProviderRoute(),
        'ThemeTestRoute': (context) => ThemeTestRoute(),
        'DialogTestRoute': (context) => DialogTestRoute(),
        'ListenerTestRoute': (context) => ListenerTestRoute(),
        'GestureDetectorTestRoute': (context) => GestureDetectorTestRoute(),
        'GestureDetectorTestRoute2': (context) => DragTest(),
        'GestureDetectorTestRoute3': (context) => DragVerticalTest(),
        'GestureDetectorTestRoute4': (context) => ScaleTestRoute(),
        'NotificationRoute': (context) => NotificationRoute(),
        'ScaleAnimationRoute': (context) => ScaleAnimationRoute(),
        'ScaleAnimationRoute2': (context) => ScaleAnimationRoute2(),
        'ScaleAnimationRoute3': (context) => ScaleAnimationRoute3(),
        'CustomerPageRoute': (context) => CustomerPageRoute(),
        'HeroAnimationRoute': (context) => HeroAnimationRoute(),
        'StaggerRoute': (context) => StaggerRoute(),
        'AnimatedSwitcherCounterRoute': (context) =>
            AnimatedSwitcherCounterRoute(),
        'AnimatedWidgetsTest': (context) => AnimatedWidgetsTest(),
        'GradientButtonRoute': (context) => GradientButtonRoute(),
        'TurnBoxRoute': (context) => TurnBoxRoute(),
        'CustomPaintRoute': (context) => CustomPaintRoute(),
        'GradientCircularProgressRoute': (context) =>
            GradientCircularProgressRoute(),
        'FileOperationRoute': (context) => FileOperationRoute(),
        'HttpTestRoute': (context) => HttpTestRoute(),
        'FutureBuilderRoute': (context) => FutureBuilderRoute(),
        'WebSocketRoute': (context) => WebSocketRoute(),
        'PlatformViewRoute': (context) => PlatformViewRoute(),

      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String routeName = settings.name;
          // 如果访问的路由页需要登录，但当前未登录，则直接返回登录页路由，
          // 引导用户登录；其它情况则正常打开路由。
          if (routeName == 'new_page') {
//            return NewRoute(text: ModalRoute.of(context).settings.arguments);
            return NewRoute();
          } else if (routeName == 'tip_new') {
            return TipRoute(text: settings.arguments);
          }
          return MyHomePage();
        });
      },
//      home: MyHomePage(title: 'Flutter Demo Home Page1'),
    );
  }
}

/*
计划
学习记录：
2020.05.27 Thursday
  TODO 搭建windows开发环境 2.1：计数器示例, 2.2：路由管理
2020.05.28 Friday
  TODO 搭建mac开发环境, 2.1：计数器示例, 2.2：路由管理
2020.05.29 Saturday
  TODO 搭建mac开发环境, 2.1：计数器示例, 2.2：路由管理
2020.05.30 Sunday
  TODO 搭建mac开发环境, 2.2：路由管理
2020.06.01 Monday
  TODO 2.1：计数器示例, 2.2：路由管理
  TODO 3.3：文本、字体样式
  TODO 3.4：按钮
  TODO 3.5：图片和Icon
  TODO 3.6：单选框和复选框
  TODO 3.7：输入框和表单
  TODO 3.8：进度指示器
  TODO 4.2：线性布局（Row、Column）

2020.06.02 Tuesday
  TODO 4.3：弹性布局（Flex）
  TODO 4.4：流式布局（Wrap、Flow）
  TODO 4.5：层叠布局（Stack、Positioned）
  TODO 4.6：对齐与相对定位（Align）
  TODO 5.1：填充（Padding）
  TODO 5.2：尺寸限制类容器（ConstrainedBox
  TODO 5.3：装饰容器（DecoratedBox）
  TODO 5.4：变换（Transform）
  TODO 5.5：Container容器
  TODO 5.6 Scaffold、TabBar、底部导航
  TODO 5.7 剪裁（Clip）
  TODO 6.2 SingleChildScrollView
  TODO 6.3 ListView
  TODO 6.3 ListViewInfinite
  TODO 6.4 GridViewRoute
  TODO 6.5 CustomScrollView
  TODO 7.1 导航返回拦截（WillPopScope）
  TODO 7.2 数据共享（InheritedWidget）

2020.06.03 Wednesday
  TODO 7.3 跨组件状态共享（Provider）
  TODO 7.4：颜色和主题（Theme）
  TODO 7.5：异步UI更新（FutureBuilder、
  TODO 7.6：对话框详解
  TODO 8.1：原始指针事件处理
  TODO 8.2：手势识别
  TODO 8.3：全局事件总线
  TODO 8.4：通知(Notification)
  TODO 9.1：Flutter动画简介
  TODO 9.2：动画结构
  TODO 9.3：自定义路由过渡动画
  TODO 9.4 Hero动画
  TODO 9.5：交织动画
  TODO 9.6：通用“动画切换”组件（Animated

2020.06.04 Thursday
  TODO 9.7：动画过渡组件
  TODO 10.1：自定义组件方法简介
  TODO 10.2：组合现有组件
  TODO 10.3：组合实例：TurnBox
  TODO 10.4：自绘组件（CustomPaint与Canva
  TODO 10.5：自绘实例：圆形渐变进度条(自
  TODO 11.1：文件操作
  TODO 11.2：Http请求-HttpClient
  TODO 11.3：Http请求-Dio package
  TODO 11.4：实例：Http分块下载
  TODO 11.5：WebSocket
  TODO 11.6：使用Socket API
  TODO 11.7：Json转Dart Model类
  TODO 12.1：开发package
  TODO 12.2：平台通道简介
  TODO 12.3：开发Flutter插件
  TODO 12.4：插件开发：实现Android端API
  TODO 12.5：插件开发：实现IOS端API
  TODO 12.6：Texture和PlatformView
  TODO 13.1：让App支持多语言
  TODO 13.2：实现Localizations
  TODO 13.3：使用Intl包
  TODO 13.4：国际化常见问题

2020.06.05 Friday
  TODO 14.1：Flutter UI系统
  TODO 14.2：Element和BuildContext
  TODO 14.3：RenderObject与RenderBox
  TODO 14.4：Flutter从启动到显示
  TODO 14.5：Flutter图片加载与缓存
  TODO 15.1：应用简介
  TODO 15.2：APP代码结构
  TODO 15.3：Model类定义
  TODO 15.4：全局变量及共享状态
  TODO 15.5：网络请求封装
  TODO 15.6：App入口及首页
  TODO 15.7：登录页
  TODO 15.8：多语言和多主题


 */
