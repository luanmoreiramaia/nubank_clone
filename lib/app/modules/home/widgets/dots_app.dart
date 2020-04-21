import 'package:flutter/material.dart';

class DotsApp extends StatelessWidget {
  final int currentIndex;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const DotsApp({Key key, this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(0),
            shape: BoxShape.circle,
          ),
          duration: Duration(milliseconds: 300),
        ),
        SizedBox(
          width: 8,
        ),
        AnimatedContainer(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(1),
            shape: BoxShape.circle,
          ),
          duration: Duration(milliseconds: 300),
        ),
        SizedBox(
          width: 8,
        ),
        AnimatedContainer(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(2),
            shape: BoxShape.circle,
          ),
          duration: Duration(milliseconds: 300),
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
