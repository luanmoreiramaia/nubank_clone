import 'package:build_context/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'bottom_menu_controller.dart';
import 'item_menu_bottom.dart';

class BottomMenuWidget extends StatefulWidget {
  final bool showMenu;

  const BottomMenuWidget({Key key, this.showMenu}) : super(key: key);

  @override
  _BottomMenuWidgetState createState() => _BottomMenuWidgetState();
}

class _BottomMenuWidgetState extends ModularState<BottomMenuWidget, BottomMenuController> {
  void initState() {
    super.initState();
    controller.setTween(Tween<double>(
      begin: 150,
      end: 0,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return TweenAnimationBuilder<double>(
          tween: controller.tween,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOutExpo,
          builder: (context, value, child) {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              bottom: !widget.showMenu ? context.mediaQueryPadding.top : 0,
              left: value,
              right: value * -1,
              height: (context.mediaQuerySize.height * 0.22) -
                  context.mediaQueryPadding.top -
                  context.mediaQueryPadding.top,
              child: IgnorePointer(
                ignoring: widget.showMenu,
                child: AnimatedOpacity(
                  opacity: !widget.showMenu ? 1 : 0,
                  duration: Duration(milliseconds: 200),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ItemMenuBottom(
                        firstItem: true,
                        iconData: Icons.person_add,
                        text: 'Indicar amigos',
                      ),
                      ItemMenuBottom(
                        iconData: Icons.phone_android,
                        text: 'Recarga de celular',
                      ),
                      ItemMenuBottom(
                        iconData: Icons.chat,
                        text: 'Cobrar',
                      ),
                      ItemMenuBottom(
                        iconData: Icons.monetization_on,
                        text: 'Empréstimos',
                      ),
                      ItemMenuBottom(
                        iconData: Icons.move_to_inbox,
                        text: 'Depositar',
                      ),
                      ItemMenuBottom(
                        iconData: Icons.mobile_screen_share,
                        text: 'Transferir',
                      ),
                      ItemMenuBottom(
                        iconData: Icons.format_align_center,
                        text: 'Ajustar limite',
                      ),
                      ItemMenuBottom(
                        iconData: Icons.chrome_reader_mode,
                        text: 'Pagar',
                      ),
                      ItemMenuBottom(
                        iconData: Icons.lock_open,
                        text: 'Bloquear cartão',
                        lastItem: true,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
