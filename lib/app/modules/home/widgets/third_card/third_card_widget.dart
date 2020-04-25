import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nubank_clone/app/modules/home/widgets/third_card/third_card_controller.dart';

class ThirdCardWidget extends StatefulWidget {
  @override
  _ThirdCardWidgetState createState() => _ThirdCardWidgetState();
}

class _ThirdCardWidgetState extends ModularState<ThirdCardWidget, ThirdCardController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/gift-outline.svg',
            semanticsLabel: 'Ocultar saldo',
            color: Colors.grey,
          ),
          Column(
            children: <Widget>[
              Text(
                'Nubank Rewards',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Observer(builder: (_) {
            return Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.7,
                  color: Colors.purple[800],
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                color: Colors.transparent,
                elevation: 0,
                disabledElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                hoverElevation: 0,
                onPressed: () {},
                child: Text(
                  'ATIVE O SEU REWARDS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                disabledTextColor: Colors.purple[800],
                textColor: controller.buttonPressed ? Colors.white : Colors.purple[800],
                highlightColor: Colors.purple[800],
                onHighlightChanged: (pressed) {
                  controller.buttonPressed = pressed;
                },
              ),
            );
          })
        ],
      ),
    );
  }
}
