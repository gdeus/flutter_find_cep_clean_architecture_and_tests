import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/repositories/find_cep_repository.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/usecases/findCep.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

class FindCepRepositoryMock implements IFindCepRepository{
  @override
  Future<Either<Failure, Adress>> findByCep(String cep) async {
    if(cep.length != 8){
      return Left(InvalidSearchText());
    }

    return Right(Adress(
      cep: '',
      publicAdress: '',
      city: '',
      complement: '',
      ddd: '',
      district: '',
      gia: '',
      siafi: '',
      uf: ''
    ));
  }

}

void main() {
  final repository = FindCepRepositoryMock();
  final usecase = FindByCepImpl(repository);

  test('find cep sucess', () async {
    final result = await usecase('85015150');

    expect(result.isRight(), true);
  });

  test('characters other than 8', () async {
    final result = await usecase('');

    expect(result.isLeft(), true);
  });
}