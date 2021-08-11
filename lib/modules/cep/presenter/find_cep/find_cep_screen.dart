import 'package:flutter/material.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/presenter/find_cep/find_cep_store.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/presenter/find_cep/states/cep_states.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/presenter/find_cep/widgets/sucess.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FindByCep extends StatefulWidget {

  @override
  _FindByCepState createState() => _FindByCepState();
}

class _FindByCepState extends ModularState<FindByCep, FindCepStore> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ache seu cep"),
        centerTitle: true,
      ),
      body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Digite seu CEP",
                  ),
                  onChanged: store.setCepText,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  child: Text("Busca CEP"),
                  onPressed: (){
                    store.findCep(controller.cep);
                  },
                )
              ),
              Observer(
                builder: (_){
                  var state = controller.state;
                  if(state is ErrorState){
                    return Text("Error");
                  }
                  if(state is StartState){
                    return Text("Faça uma busca");
                  }
                  if(state is LoadingState){
                    return Text("Carregando...");
                  }
                  if(state is SucessState){
                    return SucessFindCep(state.adress);
                  }
                  return Text("Lute");
                },)
            ],
      )
    );
  }
}