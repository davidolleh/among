part of 'obstacle_cubit.dart';

@immutable
abstract class ObstacleState {
  final double _xCoordinate;

  const ObstacleState({
    required double xCoordinate,
  }) : _xCoordinate = xCoordinate;

  double get xCoordinate => _xCoordinate;
}

class ObstacleInitial extends ObstacleState {
  const ObstacleInitial() : super(xCoordinate: 1.5);
}

class ObstacleMove extends ObstacleState {
  const ObstacleMove({
    required double xCoordinate,
  }) : super(xCoordinate: xCoordinate);
}

class ObstacleInMoving extends ObstacleState {
  const ObstacleInMoving({
    required double xCoordinate,
  }): super(xCoordinate: xCoordinate);
}


class ObstacleStop extends ObstacleState {
  const ObstacleStop({
    required double xCoordinate,
  }) : super(xCoordinate: xCoordinate);
}
