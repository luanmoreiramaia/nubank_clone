import 'package:mobx/mobx.dart';
part 'second_card_controller.g.dart';

class SecondCardController = _SecondCardControllerBase with _$SecondCardController;

abstract class _SecondCardControllerBase with Store {
  @observable
  bool showSaldo = true;
  @action
  changeShowSaldo({bool value}) => showSaldo = value != null ? value : !showSaldo;
}
