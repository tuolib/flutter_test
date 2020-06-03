import 'package:flutter/material.dart';

class CustomerPageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomerPageRoute"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('自定义路由切换动画')
          ],
        ),
      ),
    );
  }
}
