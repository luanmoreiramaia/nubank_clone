import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'page_view_app_controller.g.dart';

class PageViewAppController = _PageViewAppControllerBase with _$PageViewAppController;

abstract class _PageViewAppControllerBase with Store {
  @observable
  Tween<double> tween;
  @action
  setTween(Tween<double> value) => tween = value;
}
