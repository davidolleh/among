import 'package:among/blocs/game/game_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, state) {
        return Align(
          alignment: const Alignment(0.0, -0.9),
          child: Text(
            context.read<GameCubit>().state.min.toString() +
                ':' +
                context.read<GameCubit>().state.sec.toString(),
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        );
      },
    );
  }
}
