import 'package:among/routes/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool startTitle = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      setState(() {
        startTitle = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            AnimatedOpacity(
                opacity: startTitle ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 500),
                child: Column(
                  children: [
                    Image.asset('assets/images/start_background.png'),
                    ElevatedButton(
                        onPressed: () => {
                          Navigator.pushNamed(context, selectCharacter),
                        },
                        child:  const Text(
                        'Start button',//누를 때 깜빡 거리는 animiation 넣기
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
