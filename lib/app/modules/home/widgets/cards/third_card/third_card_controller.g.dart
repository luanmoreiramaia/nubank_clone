// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'third_card_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThirdCardController on _ThirdCardControllerBase, Store {
  final _$buttonPressedAtom =
      Atom(name: '_ThirdCardControllerBase.buttonPressed');

  @override
  bool get buttonPressed {
    _$buttonPressedAtom.context.enforceReadPolicy(_$buttonPressedAtom);
    _$buttonPressedAtom.reportObserved();
    return super.buttonPressed;
  }

  @override
  set buttonPressed(bool value) {
    _$buttonPressedAtom.context.conditionallyRunInAction(() {
      super.buttonPressed = value;
      _$buttonPressedAtom.reportChanged();
    }, _$buttonPressedAtom, name: '${_$buttonPressedAtom.name}_set');
  }

  final _$_ThirdCardControllerBaseActionController =
      ActionController(name: '_ThirdCardControllerBase');

  @override
  dynamic setButtonPressed({bool valueButtonPressed}) {
    final _$actionInfo =
        _$_ThirdCardControllerBaseActionController.startAction();
    try {
      return super.setButtonPressed(valueButtonPressed: valueButtonPressed);
    } finally {
      _$_ThirdCardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'buttonPressed: ${buttonPressed.toString()}';
    return '{$string}';
  }
}
