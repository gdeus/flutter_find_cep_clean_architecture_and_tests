// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_cep_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FindCepStore on _FindCepStoreBase, Store {
  final _$loadingAtom = Atom(name: '_FindCepStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
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
loading: ${loading},
adressModel: ${adressModel}
    ''';
  }
}
