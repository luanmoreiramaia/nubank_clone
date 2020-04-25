import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  Future<void> delay() async {
    return await Future.delayed(
      Duration(seconds: 2),
      () {
        Modular.to.pushReplacementNamed('/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Center(
        child: Hero(
          tag: 'logo',
          child: Image.asset(
            'assets/images/logo.png',
            height: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
