import 'package:playground_services/src/modules/search_cep_mvc/model/search_cep_model.dart';
import 'package:playground_services/src/modules/search_cep_mvc/repository/search_cep_repository.dart';

class SearchCepController {
  final SearchCepRepository _repository;

  SearchCepController(this._repository);

  SearchCepModel? model;

  Future<void> getAddress(String cep) async {
    model = await _repository.getAddress(cep);
  }
}
