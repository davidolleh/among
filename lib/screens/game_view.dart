import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return const Scaffold(
      body: Center(
        child: Text('game view'),
      ),
    );
  }
}
