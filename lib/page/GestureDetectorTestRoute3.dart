import 'package:flutter/material.dart';

class DragVerticalTest extends StatefulWidget {
  @override
  _DragVerticalState  createState() => new _DragVerticalState ();
}

class _DragVerticalState  extends State<DragVerticalTest>{
  double _top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("8.2：手势识别3")),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            child: GestureDetector(
                child: CircleAvatar(child: Text("A")),
                //垂直方向拖动事件
                onVerticalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _top += details.delta.dy;
                  });
                }
            ),
          )
        ],
      ),
    );
  }
}
