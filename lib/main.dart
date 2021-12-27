import 'package:among/routes/routing_constants.dart';
import 'package:among/screens/game_view.dart';
import 'package:among/screens/home_view.dart';
import 'package:flutter/material.dart';
import 'package:among/routes/router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Among_Us',
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeViewRoute,
    );
  }
}
