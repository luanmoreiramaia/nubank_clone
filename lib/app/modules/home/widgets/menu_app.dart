import 'package:build_context/build_context.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/widgets/item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 100),
        opacity: !showMenu ? 0 : 1,
        child: Container(
          height: context.mediaQuerySize.height * 0.65,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://webmobtuts.com/wp-content/uploads/2019/02/QR_code_for_mobile_English_Wikipedia.svg_.png',
                  height: 100,
                  color: Colors.white,
                ),
                dataText(
                  text1: 'Banco ',
                  text2: '260 - Nu Pagamentos S.A.',
                ),
                SizedBox(
                  height: 5,
                ),
                dataText(
                  text1: 'Agência ',
                  text2: '0001',
                ),
                SizedBox(
                  height: 5,
                ),
                dataText(
                  text1: 'Conta ',
                  text2: '12345678-9',
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    children: <Widget>[
                      ItemMenu(
                        iconData: Icons.info_outline,
                        text: 'Me ajuda',
                      ),
                      ItemMenu(
                        iconData: Icons.person_outline,
                        text: 'Perfil',
                        showBorderTop: false,
                      ),
                      ItemMenu(
                        iconData: Icons.settings,
                        text: 'Configurar conta',
                        showBorderTop: false,
                      ),
                      ItemMenu(
                        iconData: Icons.credit_card,
                        text: 'Configurar cartão',
                        showBorderTop: false,
                      ),
                      ItemMenu(
                        iconData: Icons.store_mall_directory,
                        text: 'Pedir conta PJ',
                        showBorderTop: false,
                      ),
                      ItemMenu(
                        iconData: Icons.phone_android,
                        text: 'Configurações do app',
                        showBorderTop: false,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,                  
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.7,
                            color: Colors.white54,
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
                          child: Text(
                            'SAIR DO APLICATIVO',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text dataText({String text1, String text2}) => Text.rich(
        TextSpan(
          text: text1,
          children: <InlineSpan>[
            TextSpan(
              text: text2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        style: TextStyle(
          fontSize: 12,
        ),
      );
}
