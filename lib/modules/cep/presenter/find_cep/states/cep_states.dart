import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';

abstract class CepState{}

class StartState implements CepState{
  const StartState();
}

class LoadingState implements CepState{
  const LoadingState();
}

class ErrorState implements CepState{
  final Failure error;
  const ErrorState(this.error);
}

class SucessState implements CepState{
  final Adress adress;
  const SucessState(this.adress);
}