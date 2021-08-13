import 'package:flutter/material.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';

class SucessFindCep extends StatelessWidget {
  final Adress adress;

  SucessFindCep(this.adress);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              fieldData('Rua', adress.publicAdress),
              fieldData('Bairro', adress.district),
              fieldData('Cidade', adress.city),
              fieldData('Estado', adress.uf),
            ],
          ),
        )
      );
  }


  Widget fieldData(String name, String data){
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(bottom: 2.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              data == "" ? "Não infomado para esse CEP" : data,
              style: data == "" ? TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey[400], fontStyle: FontStyle.italic) : TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}