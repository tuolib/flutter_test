import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlatformViewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlatformView"),
      ),
      body: WebView(
        initialUrl: "https://pub.dev",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
