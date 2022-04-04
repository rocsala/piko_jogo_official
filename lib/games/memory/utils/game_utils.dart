import 'package:flutter/material.dart';

class Game {
  final Color hiddenCard = Colors.red;
  List<Color> gameColors;
  List<String> gameImg;
  List<Color> cards = [
    Colors.green,
    Colors.yellow,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.blue
  ];
  final String hiddenCardpath = "assets/memory/hidden.png";
  List<String> cards_list = [
    "assets/memory/circle.png",
    "assets/memory/triangle.png",
    "assets/memory/circle.png",
    "assets/memory/heart.png",
    "assets/memory/star.png",
    "assets/memory/triangle.png",
    "assets/memory/star.png",
    "assets/memory/heart.png",
  ];
  final int cardCount = 8;
  List<Map<int, String>> matchCheck = [];

  //methods
  void initGame() {
    gameColors = List.generate(cardCount, (index) => hiddenCard);
    gameImg = List.generate(cardCount, (index) => hiddenCardpath);
  }
}
