import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const CustomAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _deviceData = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        SizedBox(
          height: _deviceData.padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: _deviceData.size.height * 0.14,
            color: Colors.purple[800],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
                      height: 35,
                      color: Colors.white,
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