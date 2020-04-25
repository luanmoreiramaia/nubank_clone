// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_menu_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BottomMenuController on _BottomMenuControllerBase, Store {
  final _$tweenAtom = Atom(name: '_BottomMenuControllerBase.tween');

  @override
  Tween<double> get tween {
    _$tweenAtom.context.enforceReadPolicy(_$tweenAtom);
    _$tweenAtom.reportObserved();
    return super.tween;
  }

  @override
  set tween(Tween<double> value) {
    _$tweenAtom.context.conditionallyRunInAction(() {
      super.tween = value;
      _$tweenAtom.reportChanged();
    }, _$tweenAtom, name: '${_$tweenAtom.name}_set');
  }

  final _$_BottomMenuControllerBaseActionController =
      ActionController(name: '_BottomMenuControllerBase');

  @override
  dynamic setTween(Tween<double> value) {
    final _$actionInfo =
        _$_BottomMenuControllerBaseActionController.startAction();
    try {
      return super.setTween(value);
    } finally {
      _$_BottomMenuControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'tween: ${tween.toString()}';
    return '{$string}';
  }
}
