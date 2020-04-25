import "package:build_context/build_context.dart";
import 'package:flutter/material.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp({Key key, this.top, this.onChanged, this.onPanUpdate, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: top,
      height: context.mediaQuerySize.height * 0.60,
      width: context.mediaQuerySize.width,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(),
            CardApp(),
            CardApp(),
          ],
        ),
      ),
    );
  }
}
