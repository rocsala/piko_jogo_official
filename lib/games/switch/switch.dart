import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const Switchhh());
}

class Switchhh extends StatelessWidget {
  const Switchhh({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Switchhh(),
    );
  }
}
