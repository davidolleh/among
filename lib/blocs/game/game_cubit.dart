import 'dart:async';

import 'package:bloc/bloc.dart';
part 'game_state.dart';

class GameCubit extends Cubit<GameState> {

  //late이라는 것은 나중에 받아오는데 언제 받아올 것인가 알기
  late Timer timer;
  //timer는 시간 주기를 설정해주고 어떤 코드들이 실행하게 되는것 기계에서 돌아가는 input 기계가 5초 돌아갔어요 input에 가깝지 데이터 저장은 아님
  // timer game_page안에 있어야됨
  //이렇게 하면 timer gameCubitstate는 데이터를 저장하는 곳
  //timer를 계속 켜줘야 지속적인 행동을 하는 것임 이것은 게임 전반적인 곳에 있어야 되서 어디에 두어야 할지를 모르겟음
  GameCubit() : super(GameInitial());

  void startGame() {
    emit(GameStart(sec: 0, min: 0));
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state.sec++;
      if (state.sec > 59) {
        state.sec = 0;
        state.min++;
        if (state.min >= 1) {
          timer.cancel();
        }
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
