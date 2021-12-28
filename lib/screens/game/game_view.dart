import 'package:among/blocs/character/character_cubit.dart';
import 'package:among/blocs/game/game_cubit.dart';
import 'package:among/screens/game/widgets/my_character.dart';
import 'package:among/screens/game/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<GameCubit>().startGame();
    return Stack(
      children: [
        GestureDetector(
          onTapUp: (_) => context.read<CharacterCubit>().shortJump(),
          onLongPress: () => context.read<CharacterCubit>().longJump(),
          child: Scaffold(
              backgroundColor: Colors.black,
              body: Column(
                // children: const [
                //   Timer(),
                //   SizedBox(height: 250,),
                //   MyCharacter(),
                // ],
                children: [
                  Expanded(
                      child: Stack(//stack 이용 방법 alignment 이용방법 알아보기
                          children: const [
                            Timer(),
                            SizedBox(height: 250,),
                            MyCharacter(),
                        ],
                      )
                  )
                ]
              )
          ),
        )
      ],
    );
  }
}
