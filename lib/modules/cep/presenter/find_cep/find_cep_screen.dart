import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/presenter/find_cep/find_cep_store.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/presenter/find_cep/states/cep_states.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/presenter/find_cep/widgets/error.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/presenter/find_cep/widgets/loading_skeleton.dart';
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
        title: Text("Ache seu CEP"),
        centerTitle: true,
      ),
      body: Column(
            children: [
              Observer(
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CepInputFormatter()
                      ],
                      onSubmitted: store.cep.length != 8 ? null : (value){
                        store.findCep(store.cep);
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Digite seu CEP",
                      ),
                      onChanged: store.setCepText,
                    ),
                  );
                }
              ),
              Observer(
                builder: (context) {
                  return store.cep.length != 8 ? 
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(4.0),
                      child: Text("- O CEP deve conter no m??nimo 8 d??gitos sem contar pontos e tra??os" , 
                        style: TextStyle(fontSize: 10.0),
                        textAlign: TextAlign.start,
                      ),
                    ) : Container(padding: EdgeInsets.all(10.0),);
                }
              ),
              Observer(
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      child: Text("Busca CEP"),
                      onPressed: store.cep.length != 8 ? null : (){
                        store.findCep(store.cep);
                      },
                    )
                  );
                }
              ),
              Observer(
                builder: (_){
                  var state = controller.state;
                  if(state is ErrorState){
                    return ErrorFindCep(state.error);
                  }
                  if(state is StartState){
                    return Text("Favor fa??a uma busca");
                  }
                  if(state is LoadingState){
                    return LoadingSkeleton();
                  }
                  if(state is SucessState){
                    return SucessFindCep(state.adress);
                  }
                  return Text("Ocorreu algum erro, favor buscar novamente");
                },)
            ],
      )
    );
  }
}