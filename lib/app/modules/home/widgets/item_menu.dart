import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData iconData;
  final String text;
  final bool showBorderTop;

  const ItemMenu({Key key, this.iconData, this.text, this.showBorderTop = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.7,
            color: Colors.white54,
          ),
          top: showBorderTop
              ? BorderSide(
                  width: 0.7,
                  color: Colors.white54,
                )
              : BorderSide(
                  width: 0,
                  color: Colors.transparent,
                ),
        ),
      ),
      child: RaisedButton(
        onPressed: () {},
        color: Colors.purple[800],
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.purple[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(iconData),
                SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
