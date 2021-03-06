import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:odekeke/mewmain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text(widget.title,
      //フォントstyle: TextStyle(shadows: <Shadow>[Shadow(offset: Offset(5.0, 10.0), blurRadius: 2.0, color: Colors.black)])),
      //  ),
      //),
        body: Center(
                child: Stack(
                    children: <Widget>[GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) =>
                              MyApp2(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(child: child, opacity: animation);
                          },
                        ),
                      );
                    },
                    // 対象の画像を記述
                    child: Image.asset(
                      'images/top_page.jpg', fit: BoxFit.cover,height: 850
                    ),
                    ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) =>
                                  MyApp2(),
                              transitionsBuilder:
                                  (context, animation, secondaryAnimation, child) {
                                return FadeTransition(child: child, opacity: animation);
                              },
                            ),
                          );
                        },
                      child:Center(
                          child: Column(
                              children: <Widget>[
                                Padding(padding: const EdgeInsets.all(170)),
                              Text(
                                  'おでけけ永和',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      shadows: <Shadow>[Shadow(offset: Offset(5.0, 10.0), blurRadius: 2.0, color: Colors.black)]
                                  )),
                              Padding(padding: const EdgeInsets.all(30)),
                              AnimatedTextKit(
                                  animatedTexts: [
                                    FadeAnimatedText('~タップして始める~',
                                        textStyle: TextStyle(fontSize: 20, color: Colors.white),
                                    )
                                  ]
                              ),
                              ]
                          )
                        )
                      ),

                    ]
                ),
        )
    );
  }
}
