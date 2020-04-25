import "package:build_context/build_context.dart";
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const CustomAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: context.mediaQueryPadding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: context.mediaQuerySize.height * 0.14,
            color: Colors.purple[800],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Hero(
                      tag: 'logo',
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 35,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Luan Moreira',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Icon(
                  !showMenu ? Icons.expand_more : Icons.expand_less,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
