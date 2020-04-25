// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$showMenuAtom = Atom(name: '_HomeControllerBase.showMenu');

  @override
  bool get showMenu {
    _$showMenuAtom.context.enforceReadPolicy(_$showMenuAtom);
    _$showMenuAtom.reportObserved();
    return super.showMenu;
  }

  @override
  set showMenu(bool value) {
    _$showMenuAtom.context.conditionallyRunInAction(() {
      super.showMenu = value;
      _$showMenuAtom.reportChanged();
    }, _$showMenuAtom, name: '${_$showMenuAtom.name}_set');
  }

  final _$currentIndexAtom = Atom(name: '_HomeControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.context.enforceReadPolicy(_$currentIndexAtom);
    _$currentIndexAtom.reportObserved();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.context.conditionallyRunInAction(() {
      super.currentIndex = value;
      _$currentIndexAtom.reportChanged();
    }, _$currentIndexAtom, name: '${_$currentIndexAtom.name}_set');
  }

  final _$yPositionAtom = Atom(name: '_HomeControllerBase.yPosition');

  @override
  double get yPosition {
    _$yPositionAtom.context.enforceReadPolicy(_$yPositionAtom);
    _$yPositionAtom.reportObserved();
    return super.yPosition;
  }

  @override
  set yPosition(double value) {
    _$yPositionAtom.context.conditionallyRunInAction(() {
      super.yPosition = value;
      _$yPositionAtom.reportChanged();
    }, _$yPositionAtom, name: '${_$yPositionAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic changeShowMenu({bool value}) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.changeShowMenu(value: value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCurrentIndex(int value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.changeCurrentIndex(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeYPosition(double value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.changeYPosition(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'showMenu: ${showMenu.toString()},currentIndex: ${currentIndex.toString()},yPosition: ${yPosition.toString()}';
    return '{$string}';
  }
}
