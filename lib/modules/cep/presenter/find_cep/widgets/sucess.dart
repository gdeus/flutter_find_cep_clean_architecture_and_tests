import 'package:flutter/material.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';

class SucessFindCep extends StatelessWidget {
  final Adress adress;

  SucessFindCep(this.adress);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          fieldData('Rua: ', adress.publicAdress),
          fieldData('Bairro: ', adress.district),
          fieldData('Cidade: ', adress.city),
          fieldData('Estado: ', adress.uf),
        ],
      )
    );
  }


  Widget fieldData(String name, String data){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name),
        Text(data)
      ],
    );
  }
}