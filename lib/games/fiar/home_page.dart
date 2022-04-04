// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:piko_jogo/games/fiar/cpu.dart';

import 'match_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            FlatButton(
              color: Colors.green,
              child: Text(
                'VS PLAYER',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/match',
                  arguments: {
                    'mode': Mode.PVP,
                  },
                );
              },
            ),
            FlatButton(
              color: Colors.black,
              child: Text(
                'VS CPU',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/cpu-level',
                  arguments: {
                    'mode': Mode.PVC,
                  },
                );
              },
            ),
            FlatButton(
              color: Colors.white,
              child: Text(
                'DEMO',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.black),
              ),
              onPressed: () {
                final harderCpu =
                    HarderCpu(Random().nextBool() ? Color.RED : Color.YELLOW);
                Navigator.pushNamed(
                  context,
                  '/match',
                  arguments: {
                    'mode': Mode.DEMO,
                    'cpu': harderCpu,
                    'cpu2': HardestCpu(harderCpu.otherPlayer),
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
