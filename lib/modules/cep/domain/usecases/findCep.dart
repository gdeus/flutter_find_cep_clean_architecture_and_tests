import 'package:dartz/dartz.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/repositories/find_cep_repository.dart';

abstract class IFindCep{
  Future<Either<Exception, Adress>> call(String cep);
}

class FindByCepImpl implements IFindCep{
  final IFindCepRepository repository;

  FindByCepImpl(this.repository);

  @override
  Future<Either<Exception, Adress>> call(String cep) async{
    cep = cep.replaceAll('.', '');
    cep = cep.replaceAll('-', '');

    if(cep.length != 8){
      return Left(FindCepException(message: "Seu CEP deve ter 8 dígitos"));
    }

    return await repository.findByCep(cep);
  }

}