import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'bottom_menu_controller.g.dart';

class BottomMenuController = _BottomMenuControllerBase with _$BottomMenuController;

abstract class _BottomMenuControllerBase with Store {
  @observable
  Tween<double> tween;
  @action
  setTween(Tween<double> value) => tween = value;
}
