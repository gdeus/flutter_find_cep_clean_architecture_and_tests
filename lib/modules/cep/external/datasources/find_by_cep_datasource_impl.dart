import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/infra/datasources/find_by_cep_datasource.dart';
import 'package:dio/dio.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/infra/models/adress_model.dart';

class FindByCepDataSourceImple implements IFindByCepDataSource{
  final Dio dio;

  FindByCepDataSourceImple(this.dio);
  @override
  Future<AdressModel> findCep(String cep) async {
    print('https://viacep.com.br/ws/${cep}/json/');
    final response = await dio.get('https://viacep.com.br/ws/${cep}/json/');
    if(response.statusCode == 200){
      print(response.data);
      final adress = AdressModel.fromJson(response.data);
      return adress;
    } else {
      throw FindCepException(message: "Algo de errado aconteceu na requisição! Por favor verifique se o CEP inserido é existente!");
    }
  }

}