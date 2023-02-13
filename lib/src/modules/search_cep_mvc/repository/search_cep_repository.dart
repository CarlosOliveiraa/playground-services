import 'package:dio/dio.dart';
import 'package:playground_services/src/modules/search_cep_mvc/model/search_cep_model.dart';

class SearchCepRepository {
  final Dio dio;

  const SearchCepRepository(this.dio);

  Future<SearchCepModel> getAddress(String cep) async {
    try {
      final response = await dio.get('https://viacep.com.br/ws/$cep/json/');
      return SearchCepModel.fromJson(response.data);
    } catch (e) {
      throw Exception();
    }
  }
}
