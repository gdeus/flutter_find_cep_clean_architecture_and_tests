import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';

abstract class CepStates{}

class StartState implements CepStates{
  const StartState();
}

class LoadingState implements CepStates{
  const LoadingState();
}

class ErrorState implements CepStates{
  final Failure error;
  const ErrorState(this.error);
}

class SucessState implements CepStates{
  final Adress adress;
  const SucessState(this.adress);
}