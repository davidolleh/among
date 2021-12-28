import 'dart:async';

import "package:bloc/bloc.dart";
import 'package:meta/meta.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(const CharacterInitial());

  void characterSelect(String path) {
    emit(CharacterStill(path: path));
  }

  void characterJump(double v) {
    double time = 0.0;
    Timer.periodic(const Duration(milliseconds: 30), (characterTimer) {
      time += 0.03;
      double targetY =
          CharacterState.initialHeight - (-4.9 * time * time + v * time);
      if (targetY >= CharacterState.initialHeight) {
        targetY = 1.0;
        emit(CharacterStill(path: state.path));
        characterTimer.cancel();
      } else {
        emit(CharacterJumping(yCoordinate: targetY, path: state.path));
      }
    });
  }

  void shortJump() {
    if (state is CharacterStill) {
      characterJump(4.5);
    }
  }

  void longJump() {
    if (state is CharacterStill) {
      characterJump(6.5);
    }
  }
}
