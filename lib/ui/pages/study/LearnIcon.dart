import 'package:flutter/material.dart';

class LearnIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
// accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";
    var img = AssetImage("assets/images/avatar.jpg");
    return Scaffold(
        appBar: AppBar(
          title: Text('LearnIcon'),
        ),
        body: Container(
          child: SingleChildScrollView(
//        padding: EdgeInsets.all(18),
            child: Container(
              child: Column(
                children: <Widget>[
                  Column(
                      children: [
                        Text(
                          icons,
                          style: TextStyle(
                              fontFamily: "MaterialIcons",
                              fontSize: 24.0,
                              color: Colors.green),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.accessible,color: Colors.green,),
                            Icon(Icons.error,color: Colors.green,),
                            Icon(Icons.fingerprint,color: Colors.green,),
                          ],
                        ),
                        Column(
                          children: <Image>[
                            Image(
                              image: AssetImage("assets/images/avatar.jpg"),
                              width: 100.0,
                            ),
                            Image.asset(
                              "assets/images/avatar.jpg",
                              width: 100.0,
                            ),
                            Image.network(
                              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                              width: 100.0,
                            ),
                            Image(
                              image: NetworkImage(
                                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                              width: 100.0,
                            ),
                            Image(
                              image: img,
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.fill,
                            ),
                            Image(
                              image: img,
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.contain,
                            ),
                            Image(
                              image: img,
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                            Image(
                              image: img,
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.fitWidth,
                            ),
                            Image(
                              image: img,
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.fitHeight,
                            ),
                            Image(
                              image: img,
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.none,
                            ),
                            Image(
                              image: img,
                              width: 200.0,
                              color: Colors.blue,
                              colorBlendMode: BlendMode.difference,
                            ),
                            Image(
                              image: img,
                              width: 100.0,
                              height: 200.0,
                              repeat: ImageRepeat.repeatY ,
                            ),
                          ].map((e){
                            return Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: SizedBox(
                                    width: 200,
                                    child: e,
                                  ),
                                ),
                                Text(e.fit.toString())
                              ],
                            );
                          }).toList(),
                        ),
                      ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
