import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool showMenu = false;
  @action
  changeShowMenu({bool value}) => showMenu = value == null ? !showMenu : value;

  @observable
  int currentIndex = 0;
  @action
  changeCurrentIndex(int value) => currentIndex = value;

  @observable
  double yPosition;
  @action
  changeYPosition(double value) => yPosition = value;
}
