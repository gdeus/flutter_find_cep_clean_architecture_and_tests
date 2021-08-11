import 'package:flutter_cep_clean_and_tests/modules/cep/domain/usecases/findCep.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/infra/models/adress_model.dart';
import 'package:flutter_cep_clean_and_tests/modules/cep/presenter/find_cep/states/cep_states.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'find_cep_store.g.dart';

@Injectable()
class FindCepStore = _FindCepStoreBase with _$FindCepStore;

abstract class _FindCepStoreBase with Store {
  final IFindCep usecase;

  _FindCepStoreBase(this.usecase);

  @observable
  String cep = "";

  @observable
  AdressModel adress;

  @observable
  CepState state = StartState();

  @action
  setCepText(String value) => cep = value;

  @action
  setState(CepState value) => state = value;

  @action
  Future<CepState> findCep(String cep) async {
    setState(LoadingState());
    final result = await usecase(cep);
    return result.fold((l) => setState(ErrorState(l)), (r) => setState(SucessState(r)));
  }
}