import 'package:flutter/material.dart';

class StackLayoutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlexLayoutTestRoute"),
      ),
      body: Container(
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
// 例子1
//          child: Stack(
//            alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
//            children: <Widget>[
//              Container(
//                child:
//                    Text("Hello world", style: TextStyle(color: Colors.white)),
//                color: Colors.red,
//              ),
//              Positioned(
//                left: 18.0,
//                child: Text("I am Jack"),
//              ),
//              Positioned(
//                top: 18.0,
//                child: Text("Your friend"),
//              ),
//            ],
//          ),
//        例子2
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand, //未定位widget占满Stack整个空间
            children: <Widget>[
              Positioned(
                left: 18.0,
                child: Text("I am Jack"),
              ),
              Container(
                child:
                    Text("Hello world", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                top: 18.0,
                child: Text("Your friend"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
