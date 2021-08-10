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
  bool loading = false; 

  @observable
  AdressModel adressModel = AdressModel(city: '');

  @action
  Future<void> findCep(String cep) async {
    loading = true;
    final result = await usecase(cep);
    loading = false;
    result.fold((l) => (l), (r) => adressModel = r);
    print(adressModel.city);
  }
}