// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_cep_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FindCepStore on _FindCepStoreBase, Store {
  final _$loadingStateAtom = Atom(name: '_FindCepStoreBase.loadingState');

  @override
  bool get loadingState {
    _$loadingStateAtom.reportRead();
    return super.loadingState;
  }

  @override
  set loadingState(bool value) {
    _$loadingStateAtom.reportWrite(value, super.loadingState, () {
      super.loadingState = value;
    });
  }

  final _$startStateAtom = Atom(name: '_FindCepStoreBase.startState');

  @override
  bool get startState {
    _$startStateAtom.reportRead();
    return super.startState;
  }

  @override
  set startState(bool value) {
    _$startStateAtom.reportWrite(value, super.startState, () {
      super.startState = value;
    });
  }

  final _$errorStateAtom = Atom(name: '_FindCepStoreBase.errorState');

  @override
  bool get errorState {
    _$errorStateAtom.reportRead();
    return super.errorState;
  }

  @override
  set errorState(bool value) {
    _$errorStateAtom.reportWrite(value, super.errorState, () {
      super.errorState = value;
    });
  }

  final _$adressModelAtom = Atom(name: '_FindCepStoreBase.adressModel');

  @override
  AdressModel get adressModel {
    _$adressModelAtom.reportRead();
    return super.adressModel;
  }

  @override
  set adressModel(AdressModel value) {
    _$adressModelAtom.reportWrite(value, super.adressModel, () {
      super.adressModel = value;
    });
  }

  final _$findCepAsyncAction = AsyncAction('_FindCepStoreBase.findCep');

  @override
  Future<void> findCep(String cep) {
    return _$findCepAsyncAction.run(() => super.findCep(cep));
  }

  @override
  String toString() {
    return '''
loadingState: ${loadingState},
startState: ${startState},
errorState: ${errorState},
adressModel: ${adressModel}
    ''';
  }
}
