import 'package:flutter/material.dart';
import 'package:piko_jogo/games/snake/splash_screen/splash_scree.dart';

void main() {
  runApp(const Snake());
}

class Snake extends StatelessWidget {
  const Snake({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
