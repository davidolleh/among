import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'obstacle_state.dart';

class ObstacleCubit extends Cubit<ObstacleState> {
  ObstacleCubit() : super(ObstacleInitial());
}
