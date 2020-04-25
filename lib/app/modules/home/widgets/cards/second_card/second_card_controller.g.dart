// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'second_card_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SecondCardController on _SecondCardControllerBase, Store {
  final _$showSaldoAtom = Atom(name: '_SecondCardControllerBase.showSaldo');

  @override
  bool get showSaldo {
    _$showSaldoAtom.context.enforceReadPolicy(_$showSaldoAtom);
    _$showSaldoAtom.reportObserved();
    return super.showSaldo;
  }

  @override
  set showSaldo(bool value) {
    _$showSaldoAtom.context.conditionallyRunInAction(() {
      super.showSaldo = value;
      _$showSaldoAtom.reportChanged();
    }, _$showSaldoAtom, name: '${_$showSaldoAtom.name}_set');
  }

  final _$_SecondCardControllerBaseActionController =
      ActionController(name: '_SecondCardControllerBase');

  @override
  dynamic changeShowSaldo({bool value}) {
    final _$actionInfo =
        _$_SecondCardControllerBaseActionController.startAction();
    try {
      return super.changeShowSaldo(value: value);
    } finally {
      _$_SecondCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'showSaldo: ${showSaldo.toString()}';
    return '{$string}';
  }
}
