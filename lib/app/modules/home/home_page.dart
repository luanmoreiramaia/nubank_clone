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
    final _screenHeigth = MediaQuery.of(context).size.height;
    final _paddingTop = MediaQuery.of(context).padding.top;

    if (controller.yPosition == null) {
      controller.yPosition = (_screenHeigth * 0.14) + _paddingTop;
    }

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Observer(
        builder: (_) {
          return Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              CustomAppBar(
                showMenu: controller.showMenu,
                onTap: () {
                  controller.changeShowMenu();
                  controller.yPosition =
                      controller.showMenu ? (_screenHeigth * 0.80) + _paddingTop : (_screenHeigth * 0.14) + _paddingTop;
                },
              ),
              PageViewApp(
                top: controller.yPosition,
                onChanged: controller.changeCurrentIndex,
                showMenu: controller.showMenu,
                onPanUpdate: (details) {
                  final positionLimitBottom = (_screenHeigth * 0.80) + _paddingTop;
                  final positionLimitTop = (_screenHeigth * 0.14) + _paddingTop;
                  final middlePosition = (positionLimitBottom - positionLimitTop) / 2;
                  controller.changeYPosition(controller.yPosition + details.delta.dy);

                  //? Bloqueia para usuario não sair do limite da transição permitida
                  controller.changeYPosition(
                      controller.yPosition < positionLimitTop ? positionLimitTop : controller.yPosition);
                  controller.changeYPosition(
                      controller.yPosition > positionLimitBottom ? positionLimitBottom : controller.yPosition);

                  //? Caso ultrapasse a metade da tela, sobe ou desce a transição
                  if (controller.yPosition != positionLimitBottom && details.delta.dy > 0) {
                    controller.changeYPosition(controller.yPosition > positionLimitTop + middlePosition + 50
                        ? positionLimitBottom
                        : controller.yPosition);
                  } else if (controller.yPosition != positionLimitTop && details.delta.dy < 0) {
                    controller.changeYPosition(controller.yPosition < positionLimitBottom - middlePosition - 50
                        ? positionLimitTop
                        : controller.yPosition);
                  }

                  //? Aciona o show menu para mudar o status da tela
                  if (controller.yPosition == positionLimitBottom) {
                    controller.changeShowMenu(value: true);
                  } else if (controller.yPosition == positionLimitTop) {
                    controller.changeShowMenu(value: false);
                  }
                },
              ),
              DotsApp(
                top: !controller.showMenu ? (_screenHeigth * 0.74) + _paddingTop : (_screenHeigth * 1.0),
                currentIndex: controller.currentIndex,
              ),
            ],
          );
        },
      ),
    );
  }
}
