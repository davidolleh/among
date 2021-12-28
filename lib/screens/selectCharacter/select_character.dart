import 'package:among/blocs/character/character_cubit.dart';
import 'package:among/routes/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectCharacter extends StatelessWidget {
  SelectCharacter({Key? key}) : super(key: key);
  final List<String> character = [
    for (var color in [
      'blue',
      'brown',
      'cyan',
      'lightgreen',
      'orange',
      'pink',
      'red',
      'yellow',
      'crimson',
      'green',
      'grey',
      'purple',
      'white'
    ])
      'assets/images/main_characters/among_us_character_$color.png',
  ]; //이거에 대해서 알려면 뭐라 검색해야됨?

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: GridView.count(
              padding: const EdgeInsets.all(80.0),
              mainAxisSpacing: 70,
              crossAxisCount: 7,
              children: List.generate(character.length, (index) {
                return GestureDetector(
                  onTap: () {
                    context
                        .read<CharacterCubit>()
                        .characterSelect(character[index]);
                    Navigator.pushNamed(context, gameViewRoute);
                  },
                  // child: Image.asset(character[index],
                  //     fit: BoxFit.fitHeight), // child은 위젯을 받고 하는 행동
                  child: Image(
                    width: 800,
                    image: AssetImage(character[index]), // child은 위젯을 받고 하는 행동
                  ),
                );
              })),
        );
      },
    );
  }
}
