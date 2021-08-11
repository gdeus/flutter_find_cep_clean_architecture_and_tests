import 'package:flutter_cep_clean_and_tests/modules/cep/domain/usecases/findCep.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/infra/models/adress_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'find_cep_store.g.dart';

@Injectable()
class FindCepStore = _FindCepStoreBase with _$FindCepStore;

abstract class _FindCepStoreBase with Store {
  final IFindCep usecase;

  _FindCepStoreBase(this.usecase);

  @observable
  bool loadingState = false; 

  @observable
  bool startState = true;

  @observable
  bool errorState = false;

  @observable
  AdressModel adressModel = AdressModel(error: false);

  @action
  Future<void> findCep(String cep) async {
    loadingState = true;
    startState = false;
    final result = await usecase(cep);
    loadingState = false;
    result.fold((l) => errorState = true, (r) => adressModel = r);
  }
}