// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_view_app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageViewAppController on _PageViewAppControllerBase, Store {
  final _$tweenAtom = Atom(name: '_PageViewAppControllerBase.tween');

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

  final _$_PageViewAppControllerBaseActionController =
      ActionController(name: '_PageViewAppControllerBase');

  @override
  dynamic setTween(Tween<double> value) {
    final _$actionInfo =
        _$_PageViewAppControllerBaseActionController.startAction();
    try {
      return super.setTween(value);
    } finally {
      _$_PageViewAppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'tween: ${tween.toString()}';
    return '{$string}';
  }
}
