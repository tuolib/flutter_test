import 'package:flutter/material.dart';

class ListenerTestRoute extends StatefulWidget {
  @override
  _ListenerTestRouteState createState() => new _ListenerTestRouteState();
}

class _ListenerTestRouteState extends State<ListenerTestRoute> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("8.1：原始指针事件处理")),
      body: Column(
        children: <Widget>[
//          Listener(
//            child: Container(
//              alignment: Alignment.center,
//              color: Colors.blue,
//              width: 300.0,
//              height: 150.0,
//              child: Text(_event?.toString() ?? "",
//                  style: TextStyle(color: Colors.white)),
//            ),
//            onPointerDown: (PointerDownEvent event) =>
//                setState(() => _event = event),
//            onPointerMove: (PointerMoveEvent event) =>
//                setState(() => _event = event),
//            onPointerUp: (PointerUpEvent event) =>
//                setState(() => _event = event),
//          ),
          Stack(
            children: <Widget>[
              Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(300.0, 200.0)),
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.blue)),
                ),
                onPointerDown: (event) => print("down0"),
              ),
              Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(200.0, 100.0)),
                  child: Center(child: Text("左上角200*100范围内非文本区域点击")),
                ),
                onPointerDown: (event) => print("down1"),
                behavior: HitTestBehavior.translucent, //放开此行注释后可以"点透"
              )
            ],
          ),
          Listener(
            child: AbsorbPointer(
              child: Listener(
                child: Container(
                  color: Colors.red,
                  width: 200.0,
                  height: 100.0,
                ),
                onPointerDown: (event)=>print("in"),
              ),
            ),
            onPointerDown: (event)=>print("up"),
          )
        ],
      ),
    );
  }
}
