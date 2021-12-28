import 'package:among/blocs/character/character_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCharacter extends StatelessWidget {
  const MyCharacter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      builder: (context, state) {
        return Align(
          alignment: Alignment(-0.9, state.yCoordinate),
          child: Image(
              width: 80,
              image: AssetImage(state.path),
          ),
        );
      },
    );
  }
}
