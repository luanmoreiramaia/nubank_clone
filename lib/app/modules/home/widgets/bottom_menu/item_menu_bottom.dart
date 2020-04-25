import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class ItemMenuBottom extends StatelessWidget {
  final bool firstItem;
  final bool lastItem;
  final IconData iconData;
  final String text;

  const ItemMenuBottom({Key key, this.firstItem = false, this.lastItem = false, this.iconData, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(firstItem ? 20 : 15, 10, lastItem ? 20 : 0, 10),
      child: Container(
        width: context.mediaQuerySize.width * 0.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white24,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(iconData),
              Text(
                text,
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
