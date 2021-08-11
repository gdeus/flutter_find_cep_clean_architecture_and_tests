import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/infra/models/adress_model.dart';

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
  final AdressModel adress;
  const SucessState(this.adress);
}