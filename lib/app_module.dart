import 'package:dio/dio.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/external/datasources/find_by_cep_datasource_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/cep/infra/repositories/find_by_cep_repository.dart';
import 'modules/cep/domain/usecases/findCep.dart';

class AppModule extends Module{
  List<Bind> get binds => [
    Bind((i) => Dio()),
    Bind((i) => FindByCepDataSourceImple(i())),
    Bind((i) => FindByCepRepository(i())),
    Bind((i) => FindByCepImpl(i())),
  ];
}