import "package:build_context/build_context.dart";
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../cards/card_app.dart';
import '../cards/first_card.dart';
import '../cards/second_card/second_card_widget.dart';
import '../cards/third_card/third_card_widget.dart';
import 'page_view_app_controller.dart';

class PageViewAppWidget extends StatefulWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewAppWidget({Key key, this.top, this.onChanged, this.onPanUpdate, this.showMenu}) : super(key: key);

  @override
  _PageViewAppWidgetState createState() => _PageViewAppWidgetState();
}

class _PageViewAppWidgetState extends ModularState<PageViewAppWidget, PageViewAppController> {
  @override
  void initState() {
    super.initState();
    controller.setTween(Tween<double>(
      begin: 150,
      end: 0,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return TweenAnimationBuilder<double>(
          tween: controller.tween,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOutExpo,
          builder: (context, value, child) {
            return AnimatedPositioned(
              top: widget.top,
              left: value,
              right: value * -1,
              height: context.mediaQuerySize.height * 0.60,
              duration: Duration(milliseconds: 250),
              curve: Curves.easeOut,
              child: GestureDetector(
                onPanUpdate: widget.onPanUpdate,
                child: PageView(
                  onPageChanged: widget.onChanged,
                  physics: widget.showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
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
          });
    });
  }
}
