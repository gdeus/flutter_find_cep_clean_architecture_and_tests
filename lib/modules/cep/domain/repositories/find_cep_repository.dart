import 'package:dartz/dartz.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';

abstract class IFindCepRepository{
  Future<Either<FindCepException, Adress>> findByCep(String cep);
}