import 'package:flutter/material.dart';

class ConstrainedBoxRoute extends StatelessWidget {
  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("5.2 尺寸限制类容器"),
        actions: <Widget>[
          UnconstrainedBox(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white70),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: double.infinity, //宽度尽可能大
                  minHeight: 50.0, //最小高度为50像素
                ),
                child: Container(
                  height: 5.0,
                  child: redBox,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(width: 80.0, height: 80.0, child: redBox),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                //父
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                  //子
                  child: redBox,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                  child: redBox,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),
                //父
                child: UnconstrainedBox(
                  //“去除”父级限制
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
                    child: redBox,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
