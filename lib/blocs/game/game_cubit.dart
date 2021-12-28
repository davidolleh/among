import 'dart:async';

import 'package:bloc/bloc.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {

  late Timer timer;//이런걸 잘 모르겟어 나중에 써야되는 건 알겠는데 바로 떠오르지가 않아
//timer를 계속 켜줘야 지속적인 행동을 하는 것임 이것은 게임 전반적인 곳에 있어야 되서 어디에 두어야 할지를 모르겟음
  GameCubit() : super(GameInitial());

  void startGame() {
    emit(GameStart(sec: 0, min: 0));
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state.sec++;
      if (state.sec > 59) {
        state.sec = 0;
        state.min++;
      }
    emit(GameInProgress(sec: state.sec, min: state.min));
    });
  }

  void pausedGame(int sec, int min) {
    timer.cancel();
    emit(GamePaused(sec: state.sec, min: state.min));
  }

  void resumedGame() {
    emit(GameStart(sec: state.sec, min: state.min));
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state.sec++;
      if (state.sec > 59) {
        state.sec = 0;
        state.min++;
      }
    });
  }

  void endGame() {
    timer.cancel();
    emit(GameEnd(sec: state.sec, min: state.min));
  }
}
