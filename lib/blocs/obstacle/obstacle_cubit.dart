import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'obstacle_state.dart';

class ObstacleCubit extends Cubit<ObstacleState> {

  late Timer timer;

  ObstacleCubit() : super(const ObstacleInitial());

  void startMove() {
    double nextX;
    emit(ObstacleMove(xCoordinate: state.xCoordinate));
    timer = Timer.periodic(const Duration(microseconds: 300), (timer) {
      nextX = state.xCoordinate - 0.03;
      if (nextX <= -1.0) {
        nextX = 1.5;
      }
      emit(ObstacleInMoving(xCoordinate: nextX));
    });
  }

  void stopMove() {
    timer.cancel();
    emit(ObstacleStop(xCoordinate: state.xCoordinate));
  }
}
