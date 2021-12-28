part of 'game_cubit.dart';

// @immutable
abstract class GameState {
  // final int _sec;
  // final int _min;
  // int _sec;
  // int _min;
  // final Timer timer;

  // GameState({
  //   required int sec,
  //   required int min,
  // }) : _sec = sec, _min = min;

  // int get sec => _sec;
  // int get min => _min;
  //
  // set sec(int sec) => _sec = sec;
  // set min(int min) => _min = min;

  int sec;
  int min;

  GameState({
    required this.sec,
    required this.min,
  });
}

class GameInitial extends GameState {
  GameInitial() : super(
    sec: 0,
    min: 0,
  );
}

class GameStart extends GameState {
  GameStart({
    required int sec,
    required int min,
  }): super(
    sec: sec,
    min: min,
  );
}

class GameInProgress extends GameState {
  GameInProgress({
    required int sec,
    required int min,
  }): super(
    sec: sec,
    min: min,
  );
}

class GamePaused extends GameState {
  GamePaused({
    required int sec,
    required int min,
  }): super(
    sec: sec,
    min: min,
  );
}

class GameEnd extends GameState {
  GameEnd({
    required int sec,
    required int min,
  }): super(
    sec: sec,
    min: min,
  );
}

