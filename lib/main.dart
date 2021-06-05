import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RichText(
              softWrap: true,
              textWidthBasis: TextWidthBasis.longestLine,
              text: TextSpan(children: [
                TextSpan(
                  text: "ك",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 48,
                    fontFamily: "uthmanic",
                  ),
                ),
                TextSpan(
                  text: "ِّ", //Diacritic
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 48,
                    fontFamily: "uthmanic",
                  ),
                ),
                TextSpan(
                  text: "ـ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 48,
                    fontFamily: "uthmanic",
                  ),
                ),
              ]),
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: "كَُ",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 48,
                    fontFamily: "uthmanic",
                  ),
                ),
                TextSpan(
                  text: "ـ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 48,
                    fontFamily: "uthmanic",
                  ),
                ),
              ]),
              style: TextStyle(
                  color: Colors.blue, fontSize: 48, fontFamily: "uthmanic"),
            ),
            Text(
              "ِّمُِ ",
              style: TextStyle(
                color: Colors.red,
                fontSize: 48,
                fontFamily: "uthmanic",
              ),
            )
          ],
        ),
      ),
    );
  }
}
