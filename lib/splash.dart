import 'package:cyber_watch/main.dart';
import 'package:cyber_watch/welcome.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const Welcome(
                  title: 'App Splash Screen',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const Image(
            image: AssetImage('images/cyberwatch.png'),
          ),
        ),
      ),
    );
  }
}
