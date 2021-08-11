import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_cep_clean_and_tests/app_module.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/usecases/findCep.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DioMock extends Mock implements Dio{}

void main() {
  final dio = DioMock();

  initModule(AppModule(), replaceBinds: [
    Bind<Dio>((i) => dio),
  ]);
  test('execute use case', (){
    final usecase = Modular.get<IFindCep>();
    expect(usecase, isA<FindByCepImpl>());
  });

  test('return usecase no error', () async {
    final usecase = Modular.get<IFindCep>();
    final result = await usecase("85015150");
    expect(result | null , isA<Adress>());
  });
  
  test('return an address based on a zip code', () async {
    final usecase = Modular.get<IFindCep>();
    final result = await usecase("85015150");

    when(dio.get(any)).thenAnswer((_) async => Response(data: jsonDecode(adressResultMock), statusCode: 200));

    expect(result | null, isA<Adress>());
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