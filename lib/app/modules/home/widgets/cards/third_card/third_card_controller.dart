import 'package:mobx/mobx.dart';
part 'third_card_controller.g.dart';

class ThirdCardController = _ThirdCardControllerBase with _$ThirdCardController;

abstract class _ThirdCardControllerBase with Store {
  @observable
  bool buttonPressed = false;
  @action
  setButtonPressed(bool value) => buttonPressed = value;
}
