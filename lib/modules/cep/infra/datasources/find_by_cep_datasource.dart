import 'package:flutter_cep_clean_and_tests/modules/cep/infra/models/adress_model.dart';

abstract class IFindByCepDataSource{
  Future<AdressModel> findCep(String cep);
}