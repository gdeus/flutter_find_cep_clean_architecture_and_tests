import 'package:dartz/dartz.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/infra/datasources/find_by_cep_datasource.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/infra/models/adress_model.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/infra/repositories/find_by_cep_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class FindByCepDataSourceMock extends Mock implements IFindByCepDataSource{}

void main() {
  final datasource = FindByCepDataSourceMock();
  final respository = FindByCepRepository(datasource);

  test('return a Adress Model', () async {
    when(datasource.findCep(any)).thenAnswer((_) async => AdressModel());
    final result = await respository.findByCep('85877000');
    expect(result | null, isA<AdressModel>());
  });

  test('return is FindCepExpetion', () async {
    when(datasource.findCep(any)).thenThrow(Exception());
    final result = await respository.findByCep('85877000');
    expect(result.fold(id, id), isA<FindCepException>());
  });
}