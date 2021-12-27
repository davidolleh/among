import 'package:flutter/material.dart';

class SelectCharacter extends StatelessWidget {
  SelectCharacter({Key? key}) : super(key: key);
  final List<String> character = [
    for(var color in [
      'blue', 'brown', 'cyan', 'lightgreen', 'orange', 'pink',
      'red', 'yellow', 'crimson', 'green', 'grey', 'purple', 'white'
    ])
      'assets/images/main_characters/among_us_character_$color.png',
  ];//이거에 대해서 알려면 뭐라 검색해야됨?

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.count(
        padding: const EdgeInsets.all(80.0),
        mainAxisSpacing: 70,
        crossAxisCount: 7,
        children: List.generate(character.length, (index) {
             return GestureDetector(
              onTap: () {},
              child: Image.asset(character[index], fit: BoxFit.fitHeight),// child은 위젯을 받고 하는 행동
            );
        })
      ),
    );
  }
}
