import 'package:flutter/material.dart';

import './CustomerPageRoute.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
//          mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.display1,
          ),
          FlatButton(
            child: Text("2.2 路由管理 open new route"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
//                Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return NewRoute();
//                }));

              return Navigator.of(context).pushNamed("NewRoute");
            },
          ),
          FlatButton(
            child: Text("2.2 路由管理 open tip page"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("RouterTestRoute");
//                Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return RouterTestRoute();
//                }));
            },
          ),
          FlatButton(
            child: Text("2.2 路由管理 open new route"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context)
                  .pushNamed("new_page", arguments: "hi");
            },
          ),
          FlatButton(
            child: Text("2.2 路由管理 open tip_new"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context)
                  .pushNamed("tip_new", arguments: "hi");
            },
          ),
          FlatButton(
            child: Text("3.3 文本、字体样式"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("textAndWord");
            },
          ),
          FlatButton(
            child: Text("3.4 按钮"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("learnButton");
            },
          ),
          FlatButton(
            child: Text("3.5 图片"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("LearnImage");
            },
          ),
          FlatButton(
            child: Text("3.5 Icon"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("LearnIcon");
            },
          ),
          FlatButton(
            child: Text("3.6 单选框和复选框"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("LearnRadio");
            },
          ),
          FlatButton(
            child: Text("3.7 Textarea"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("LearnTextarea");
            },
          ),
//            FlatButton(
//              child: Text("3.7 单选框和复选框"),
//              textColor: Colors.blue,
//              onPressed: () {
//                //导航到新路由
//                return Navigator.of(context).pushNamed("LearnTextareaFocus");
//              },
//            ),
          FlatButton(
            child: Text("3.7 输入框和表单"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("FormTestRoute");
            },
          ),
          FlatButton(
            child: Text("3.8 进度指示器"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("LearnProgressIndicator");
            },
          ),
          FlatButton(
            child: Text("3.8 进度指示器"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context)
                  .pushNamed("LearnProgressIndicatorAnimation");
            },
          ),
          FlatButton(
            child: Text("3.8 open CenterColumnRoute"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("CenterColumnRoute");
            },
          ),
          FlatButton(
            child: Text("4.3 弹性布局（Flex）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("FlexLayoutTestRoute");
            },
          ),
          FlatButton(
            child: Text("4.5 层叠布局（Stack、Positioned）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("StackLayoutRoute");
            },
          ),
          FlatButton(
            child: Text("4.6 对齐与相对定位（Align）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("AlignLayoutRoute");
            },
          ),
          FlatButton(
            child: Text("5.1 填充（Padding）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("PaddingTestRoute");
            },
          ),
          FlatButton(
            child: Text("5.2 尺寸限制类容器"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ConstrainedBoxRoute");
            },
          ),
          FlatButton(
            child: Text("5.3：装饰容器（DecoratedBox）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("DecoratedBoxRoute");
            },
          ),
          FlatButton(
            child: Text("5.5 Container"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ContainerRoute");
            },
          ),
          FlatButton(
            child: Text("5.6 Scaffold、TabBar、底部导航"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ScaffoldRoute");
            },
          ),
          FlatButton(
            child: Text("5.7 剪裁（Clip）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ClipTestRoute");
            },
          ),
          FlatButton(
            child: Text("6.2 SingleChildScrollView"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context)
                  .pushNamed("SingleChildScrollViewTestRoute");
            },
          ),
          FlatButton(
            child: Text("6.3 ListView"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ListViewRoute");
            },
          ),
          FlatButton(
            child: Text("6.3 ListViewInfinite"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ListViewInfiniteRoute");
            },
          ),
          FlatButton(
            child: Text("6.4 GridViewRoute"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("GridViewRoute");
            },
          ),
          FlatButton(
            child: Text("6.5 CustomScrollView "),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("CustomScrollViewRoute");
            },
          ),
          FlatButton(
            child: Text("6.6 滚动监听及控制"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ScrollListenRoute");
            },
          ),
//          FlatButton(
//            child: Text("6.6 滚动监听及控制 2"),
//            textColor: Colors.blue,
//            onPressed: () {
//              //导航到新路由
//              return Navigator.of(context).pushNamed("ScrollListenRouteTwo");
//            },
//          ),
          FlatButton(
            child: Text("7.1 导航返回拦截（WillPopScope）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("WillPopScopeTestRoute");
            },
          ),
          FlatButton(
            child: Text("7.2 数据共享（InheritedWidget）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context)
                  .pushNamed("InheritedWidgetTestRoute");
            },
          ),
          FlatButton(
            child: Text("7.3 跨组件状态共享（Provider）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ProviderRoute");
            },
          ),
          FlatButton(
            child: Text("7.4：颜色和主题（Theme）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ThemeTestRoute");
            },
          ),
          FlatButton(
            child: Text("7.6：对话框详解"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("DialogTestRoute");
            },
          ),
          FlatButton(
            child: Text("8.1：原始指针事件处理"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ListenerTestRoute");
            },
          ),
          FlatButton(
            child: Text("8.2：手势识别"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context)
                  .pushNamed("GestureDetectorTestRoute");
            },
          ),
          FlatButton(
            child: Text("8.2：手势识别2"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context)
                  .pushNamed("GestureDetectorTestRoute2");
            },
          ),
          FlatButton(
            child: Text("8.2：手势识别3单一方向拖动"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context)
                  .pushNamed("GestureDetectorTestRoute3");
            },
          ),
          FlatButton(
            child: Text("8.2：手势识别4"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context)
                  .pushNamed("GestureDetectorTestRoute4");
            },
          ),
          FlatButton(
            child: Text("8.4：通知(Notification)"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("NotificationRoute");
            },
          ),
          FlatButton(
            child: Text("9.2 动画基本结构及状态监听"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ScaleAnimationRoute");
            },
          ),
          FlatButton(
            child: Text("9.2 动画基本结构及状态监听 2"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ScaleAnimationRoute2");
            },
          ),
          FlatButton(
            child: Text("9.2 动画基本结构及状态监听 3"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("ScaleAnimationRoute3");
            },
          ),
          FlatButton(
            child: Text("9.3 自定义路由切换动画"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
//              return PageRouteBuilder(
//                pageBuilder: (_, __, ___) => CustomerPageRoute(),
//                transitionsBuilder: (_, anim, __, child) {
//                  return FadeTransition(opacity: anim, child: child);
//                },
//              );
              return Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 500), //动画时间为500毫秒
                  pageBuilder: (BuildContext context, Animation animation,
                      Animation secondaryAnimation) {
                    return new FadeTransition(
                      //使用渐隐渐入过渡,
                      opacity: animation,
                      child: CustomerPageRoute(), //路由B
                    );
                  },
                ),
              );
//              return Navigator.of(context).pushNamed("CustomerPageRoute");
            },
          ),
          FlatButton(
            child: Text("9.4 Hero动画"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("HeroAnimationRoute");
            },
          ),
          FlatButton(
            child: Text("9.5 交织动画"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("StaggerRoute");
            },
          ),
          FlatButton(
            child: Text("9.5 交织动画2"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("AnimatedSwitcherCounterRoute");
            },
          ),
          FlatButton(
            child: Text("9.7.2 Flutter预置的动画过渡组件"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("AnimatedWidgetsTest");
            },
          ),
          FlatButton(
            child: Text("10.2 组合现有组件"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("GradientButtonRoute");
            },
          ),
          FlatButton(
            child: Text("10.3 组合实例：TurnBox"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("TurnBoxRoute");
            },
          ),
          FlatButton(
            child: Text("10.4 自绘组件 （CustomPaint与Canvas）"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("CustomPaintRoute");
            },
          ),
          FlatButton(
            child: Text("10.5 自绘实例：圆形背景渐变进度条"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("GradientCircularProgressRoute");
            },
          ),
          FlatButton(
            child: Text("11.1 文件操作"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("FileOperationRoute");
            },
          ),
          FlatButton(
            child: Text("11.2 通过HttpClient发起HTTP请求"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("HttpTestRoute");
            },
          ),
          FlatButton(
            child: Text("11.3：Http请求-Dio package"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("FutureBuilderRoute");
            },
          ),
          FlatButton(
            child: Text("11.5：使用WebSockets"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("WebSocketRoute");
            },
          ),
          FlatButton(
            child: Text("12.6：PlatformView"),
            textColor: Colors.blue,
            onPressed: () {
              //导航到新路由
              return Navigator.of(context).pushNamed("PlatformViewRoute");
            },
          ),






        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
