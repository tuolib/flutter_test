import 'package:flutter/material.dart';

class LearnTextarea extends StatelessWidget {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _selectionController =  TextEditingController();

  @override
  void initState() {
    //监听输入改变
    _unameController.addListener(() {
      print(_unameController.text);
    });

    _selectionController.text="hello world!";
    _selectionController.selection=TextSelection(
        baseOffset: 2,
        extentOffset: _selectionController.text.length
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn LearnTextarea'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person),
              ),
              controller: _selectionController,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
              onChanged: (v) {
                print("onChange: $v");
              },
            ),
          ],
        ),
      ),
    );
  }
}
