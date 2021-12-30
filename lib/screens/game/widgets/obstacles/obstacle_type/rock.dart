import 'package:among/blocs/obstacle/obstacle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Rock extends StatelessWidget {
  const Rock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ObstacleCubit, ObstacleState>(builder: (context, state) {
      return Align(
        alignment: Alignment(state.xCoordinate, 0.7),
        child: Image.asset('assets/images/obstacles/among_us_rock.png',
            height: 70),
      );
    });
  }
}
