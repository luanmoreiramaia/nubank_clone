import 'package:build_context/build_context.dart';
import 'package:flutter/material.dart';

import 'item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {
  final bool showMenu;

  const BottomMenu({Key key, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: !showMenu ? context.mediaQueryPadding.top : 0,
      left: 0,
      right: 0,
      height: (context.mediaQuerySize.height * 0.22) - context.mediaQueryPadding.top - context.mediaQueryPadding.top,
      child: IgnorePointer(
        ignoring: showMenu,
        child: AnimatedOpacity(
          opacity: !showMenu ? 1 : 0,
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
  }
}
