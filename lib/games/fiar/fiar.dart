import 'package:flutter/material.dart';
import 'package:piko_jogo/games/fiar/cpu_level_page.dart';
import 'package:piko_jogo/games/fiar/home_page.dart';
import 'package:piko_jogo/games/fiar/match_page.dart';

void main() => runApp(Fiar());

class Fiar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter fiar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      onGenerateRoute: (settings) {
        final args = settings.arguments as Map<String, dynamic>;
        if (settings.name == '/match') {
          return MaterialPageRoute(
            builder: (context) => MatchPage(
              mode: args['mode'],
              cpu: args['cpu'],
              cpu2: args['cpu2'],
            ),
          );
        } else if (settings.name == '/cpu-level') {
          return MaterialPageRoute(
            builder: (context) => CpuLevelPage(),
          );
        }

        return null;
      },
    );
  }
}
