part of 'character_cubit.dart';

@immutable
abstract class CharacterState {
  static const double _initialHeight = 0.7;
  final double _yCoordinate;
  final bool _isAlive;
  final String _path;

  const CharacterState({
    required double yCoordinate,
    required bool isAlive,
    required String path,
  }): _path = path, _isAlive = isAlive, _yCoordinate = yCoordinate;

  static double get initialHeight => _initialHeight;
  double get yCoordinate => _yCoordinate;
  bool get isAlive => _isAlive;
  String get path => _path;
}

class CharacterInitial extends CharacterState {
    const CharacterInitial({
      String path = 'assets/images/main_characters/among_us_character_red'
  }) : super(
      yCoordinate: 0.7,
      isAlive: true,
      path: path
  );
}

class CharacterSelected extends CharacterState {
  const CharacterSelected({
    required String path
  }): super(
    yCoordinate: 0.7,
    isAlive: true,
    path: path
  );
}

class CharacterStill extends CharacterState {
  const CharacterStill({
    required String path,
  }) : super(
      path : path,
      isAlive: true,
      yCoordinate: 0.7
  );
}

class CharacterJumping extends CharacterState {
  const CharacterJumping({
    required double yCoordinate,
    required String path
  }) : super(
    yCoordinate: yCoordinate,
    isAlive: true,
    path: path,
  );
}

class CharacterDead extends CharacterState {
  const CharacterDead({
    required double yCoordinate,
    required String path
  }) : super(
    yCoordinate: yCoordinate,
    isAlive: false,
    path: path,
  );
}
