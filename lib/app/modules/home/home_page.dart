import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/widgets/custom_app_bar.dart';
import 'package:nubank_clone/app/modules/home/widgets/dots_app.dart';
import 'package:nubank_clone/app/modules/home/widgets/page_view_app.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    final _deviceData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Observer(
            builder: (_) {
              return CustomAppBar(
                showMenu: controller.showMenu,
                onTap: controller.changeShowMenu,
              );
            },
          ),
          PageViewApp(
            top: (_deviceData.size.height * 0.14) + _deviceData.padding.top,
            onChanged: controller.changeCurrentIndex,
          ),
          Positioned(
            top: (_deviceData.size.height * 0.74) + _deviceData.padding.top,
            child: Observer(
              builder: (_) {
                return DotsApp(
                  currentIndex: controller.currentIndex,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
