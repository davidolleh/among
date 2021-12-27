import 'package:among/routes/routing_constants.dart';
import 'package:among/screens/select_character.dart';
import 'package:among/screens/undefined_view.dart';
import 'package:flutter/material.dart';
import 'package:among/screens/home_view.dart';
import 'package:among/screens/game_view.dart';

Route<dynamic> generateRoute (RouteSettings settings) {
  switch (settings.name) {
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case selectCharacter:
      return MaterialPageRoute(builder: (context) => SelectCharacter());
    case gameViewRoute:
      return MaterialPageRoute(builder: (context) => const GameView());
    default:
      return MaterialPageRoute(builder: (context) => const UndefinedView());
  }
}
