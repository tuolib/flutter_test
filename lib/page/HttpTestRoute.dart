import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpTestRoute extends StatefulWidget {
  @override
  _HttpTestRouteState createState() => new _HttpTestRouteState();
}

class _HttpTestRouteState extends State<HttpTestRoute> {
  bool _loading = false;
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomerPageRoute"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RaisedButton(
                  child: Text("获取https://4ursafety.ml/ 个人信息"),
                  onPressed: _loading
                      ? null
                      : () async {
                          setState(() {
                            _loading = true;
                            _text = "正在请求...";
                          });
                          try {
                            final token =
                                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTQsInVzZXJUeXBlIjozLCJ1c2VybmFtZSI6ImhhbTEiLCJhdmF0YXIiOiIxMjQiLCJhdmF0YXJVcmwiOiJmaWxlXzE1ODk4MTgwNzQ5NDNfMSAoMikuanBnIiwiaWF0IjoxNTkwMzc2OTQyfQ.uWLufi37GCBpYTLK_jZ3Belsl75aM6CGY1oBigS9_6E";
//                            创建一个HttpClient
                            HttpClient httpClient = new HttpClient();
                            //打开Http连接
                            Uri uri = Uri.parse(
                                "https://4ursafety.ml/api/account/person/info");
                            HttpClientRequest request =
                                await httpClient.postUrl(uri);
                            //使用iPhone的UA
//                            request.headers.add("user-agent",
//                                "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
                            //等待连接服务器（会将请求信息发送给服务器）
                            request.headers.set(HttpHeaders.contentTypeHeader,
                                "application/json; charset=UTF-8");
                            request.headers.add('authtoken', token);
                            HttpClientResponse response = await request.close();
                            //读取响应内容
//                            _text =
//                                await response.transform(utf8.decoder).join();
                            response.transform(utf8.decoder).listen((contents) {
                              print(contents);
                              _text = contents;
                            });
                            //输出响应头
                            print(response);

                            //关闭client后，通过该client发起的所有请求都会中止。
                            httpClient.close();
                          } catch (e) {
                            _text = "请求失败：$e";
                          } finally {
                            setState(() {
                              _loading = false;
                            });
                          }
                        }),
              Container(
                  width: MediaQuery.of(context).size.width - 50.0,
                  child: Text(_text.replaceAll(new RegExp(r"\s"), "")))
            ],
          ),
        ),
      ),
    );
  }
}
