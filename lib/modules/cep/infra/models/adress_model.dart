import 'package:flutter_cep_clean_and_tests/modules/cep/domain/entities/adress.dart';

class AdressModel extends Adress{
  String cep;
  String publicAdress;
  String complement;
  String district;
  String city;
  String uf;
  String gia;
  String ddd;
  String siafi;

  AdressModel({this.cep, this.publicAdress, this.complement, this.district, this.city, this.uf, this.gia, this.ddd, this.siafi});

  AdressModel.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    publicAdress = json['logradouro'];
    complement = json['complemento'];
    district = json['bairro'];
    city = json['localidade'];
    uf = json['uf'];
    gia = json['gia'];
    ddd = json['ddd'];
    siafi = json['siafi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cep'] = this.cep;
    data['logradouro'] = this.publicAdress;
    data['complemento'] = this.complement;
    data['bairro'] = this.district;
    data['localidade'] = this.city;
    data['uf'] = this.uf;
    data['gia'] = this.gia;
    data['ddd'] = this.ddd;
    data['siafi'] = this.siafi;
    return data;
  }
}