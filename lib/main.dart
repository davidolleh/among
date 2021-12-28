import 'package:among/routes/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:among/routes/router.dart' as router;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/character/character_cubit.dart';
import 'blocs/game/game_cubit.dart';
import 'blocs/obstacle/obstacle_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => CharacterCubit()),
          BlocProvider(create: (_) => ObstacleCubit()),
          BlocProvider(create: (_) => GameCubit()),
        ],
        child: const MaterialApp(
          title: 'Among_Us',
          onGenerateRoute: router.generateRoute,
          initialRoute: homeViewRoute,
        ));
  }
}
