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






void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo1',
      initialRoute: "/",
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
        'LearnProgressIndicator': (context) => LearnProgressIndicator.LearnProgressIndicator(),
        'LearnProgressIndicatorAnimation': (context) => LearnProgressIndicator.ProgressRoute(),
        'CenterColumnRoute': (context) => CenterColumnRoute.CenterColumnRoute(),
        'FlexLayoutTestRoute': (context) => FlexLayoutTestRoute.FlexLayoutTestRoute(),
        'StackLayoutRoute': (context) => StackLayoutRoute.StackLayoutRoute(),
        'AlignLayoutRoute': (context) => AlignLayoutRoute.AlignLayoutRoute(),
        'PaddingTestRoute': (context) => PaddingTestRoute.PaddingTestRoute(),
        'ConstrainedBoxRoute': (context) => ConstrainedBoxRoute.ConstrainedBoxRoute(),
        'DecoratedBoxRoute': (context) => DecoratedBoxRoute.DecoratedBoxRoute(),
        'TransformRoute': (context) => TransformRoute.TransformRoute(),
        'ContainerRoute': (context) => ContainerRoute.ContainerRoute(),
        'ScaffoldRoute': (context) => ScaffoldRoute.ScaffoldRoute(),
        'ClipTestRoute': (context) => ClipTestRoute.ClipTestRoute(),
        "SingleChildScrollViewTestRoute": (context) => SingleChildScrollViewTestRoute(),
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

学习记录：
2020.05.27 Thursday
  TODO 搭建环境 2.1：计数器示例, 2.2：路由管理
2020.05.28 Friday
  TODO 2.1：计数器示例, 2.2：路由管理
2020.05.29 Saturday
  TODO 2.1：计数器示例, 2.2：路由管理
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
  TODO 4.3：弹性布局（Flex）
2020.06.02 Tuesday
  TODO 4.4：流式布局（Wrap、Flow）
  TODO 4.5：层叠布局（Stack、Positioned）
  TODO 4.6：对齐与相对定位（Align）
  TODO 5.1：填充（Padding）
  TODO 5.2：尺寸限制类容器（ConstrainedBox
  TODO 5.3：装饰容器（DecoratedBox）
  TODO 5.4：变换（Transform）
  TODO 5.5：Container容器

 */

