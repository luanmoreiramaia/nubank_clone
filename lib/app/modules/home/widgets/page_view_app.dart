import "package:build_context/build_context.dart";
import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/widgets/first_card.dart';
import 'package:nubank_clone/app/modules/home/widgets/third_card/third_card_widget.dart';

import 'card_app.dart';
import 'second_card/second_card_widget.dart';

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
      duration: Duration(milliseconds: 250),
      curve: Curves.easeOut,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(
              child: FirstCard(),
            ),
            CardApp(
              child: SecondCardWidget(),
            ),
            CardApp(
              child: ThirdCardWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
