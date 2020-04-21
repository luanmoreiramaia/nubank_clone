import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool showMenu;
  @action
  changeShowMenu() => showMenu = !showMenu;

  @observable
  int currentIndex;
  @action
  changeCurrentIndex(int value) => currentIndex = value;
}
