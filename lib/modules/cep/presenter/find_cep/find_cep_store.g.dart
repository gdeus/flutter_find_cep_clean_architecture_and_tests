// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_cep_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FindCepStore on _FindCepStoreBase, Store {
  final _$cepAtom = Atom(name: '_FindCepStoreBase.cep');

  @override
  String get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  final _$stateAtom = Atom(name: '_FindCepStoreBase.state');

  @override
  CepState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(CepState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$findCepAsyncAction = AsyncAction('_FindCepStoreBase.findCep');

  @override
  Future<CepState> findCep(String cep) {
    return _$findCepAsyncAction.run(() => super.findCep(cep));
  }

  final _$_FindCepStoreBaseActionController =
      ActionController(name: '_FindCepStoreBase');

  @override
  dynamic setCepText(String value) {
    final _$actionInfo = _$_FindCepStoreBaseActionController.startAction(
        name: '_FindCepStoreBase.setCepText');
    try {
      return super.setCepText(value);
    } finally {
      _$_FindCepStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setState(CepState value) {
    final _$actionInfo = _$_FindCepStoreBaseActionController.startAction(
        name: '_FindCepStoreBase.setState');
    try {
      return super.setState(value);
    } finally {
      _$_FindCepStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cep: ${cep},
state: ${state}
    ''';
  }
}
