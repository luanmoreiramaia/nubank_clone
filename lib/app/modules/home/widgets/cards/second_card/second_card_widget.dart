import 'package:build_context/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'second_card_controller.dart';

class SecondCardWidget extends StatefulWidget {
  @override
  _SecondCardWidgetState createState() => _SecondCardWidgetState();
}

class _SecondCardWidgetState extends ModularState<SecondCardWidget, SecondCardController>
    with AutomaticKeepAliveClientMixin {
    
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Observer(builder: (_) {
            return Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.attach_money,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Conta',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            child: SvgPicture.asset(
                              controller.showSaldo
                                  ? 'assets/icons/eye-off-outline.svg'
                                  : 'assets/icons/eye-outline.svg',
                              semanticsLabel: 'Ocultar saldo',
                              color: Colors.grey,
                            ),
                            onTap: () {
                              controller.changeShowSaldo(value: !controller.showSaldo);
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Saldo disponível',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          controller.showSaldo
                              ? Text.rich(
                                  TextSpan(
                                    text: 'R\$ 958.459,23',
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                  ),
                                )
                              : Container(
                                  height: 33,
                                  width: 180,
                                  color: Colors.grey[300],
                                ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: context.mediaQuerySize.height * 0.05,
                    ),
                  ],
                ),
              ),
            );
          }),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        'Compra mais recente em Supermercado no valor de R\$ 200,00 sexta',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey[400],
                      size: 18,
                    ),
                  ],
                ),
              ),
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
