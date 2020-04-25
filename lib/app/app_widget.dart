import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.purple[800],
    ));

    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Nubank Design Inspiration',
      theme: ThemeData(primarySwatch: Colors.purple, brightness: Brightness.dark),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
