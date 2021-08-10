import 'dart:math';

import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/repositories/find_cep_repository.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/infra/datasources/find_by_cep_datasource.dart';

class FindByCepRepository implements IFindCepRepository{
  final IFindByCepDataSource datasource;

  FindByCepRepository(this.datasource);

  @override
  Future<Either<FindCepException, Adress>> findByCep(String cep) async {
    try{
      final adress = await datasource.findCep(cep);
      return Right(adress);
    } on FindCepException catch(e){
      return Left(e);
    } on Exception {
      return Left(FindCepException(message: 'Exception error'));
    }
  }

}