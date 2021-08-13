import 'package:flutter/material.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/errors/errors.dart';

class ErrorFindCep extends StatelessWidget {
  final Failure failure;

  ErrorFindCep(this.failure);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.topCenter,
            child: Text("Esse CEP infelizmente não existe na base de dados do Via CEP, favor verificar!"),
          ),
        )
      );
  }
}