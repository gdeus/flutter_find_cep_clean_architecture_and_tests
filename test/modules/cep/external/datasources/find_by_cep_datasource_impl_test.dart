import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/external/datasources/find_by_cep_datasource_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DioMock extends Mock implements Dio{}

void main() {
  final dio = DioMock();
  final datasource = FindByCepDataSourceImple(dio); 

  test('return a adress based on a cep ', () async {
    when(dio.get(any)).thenAnswer((_) async => Response(data: jsonDecode(adressResultMock), statusCode: 200));
    final future = datasource.findCep("12345678");
    expect(future, completes);
  });

  test('return a error if status code not 200 ', () async {
    when(dio.get(any)).thenAnswer((_) async => Response(data: null, statusCode: 401));
    final future = datasource.findCep("12345678");
    expect(future, throwsA(isA<ErrorSearch>()));
  });
}

const adressResultMock = """
{
  "cep": "85015-150",
  "logradouro": "Rua Gaudêncio Ferlin",
  "complemento": "",
  "bairro": "Santa Cruz",
  "localidade": "Guarapuava",
  "uf": "PR",
  "ibge": "4109401",
  "gia": "",
  "ddd": "42",
  "siafi": "7583"
}
""";