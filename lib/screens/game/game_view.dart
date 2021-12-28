import 'package:among/blocs/game/game_cubit.dart';
import 'package:among/screens/game/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GameCubit>(context).startGame();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: const [
            Timer(),
        ],
      )
    );
  }
}
