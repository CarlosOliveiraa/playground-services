import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground_services/src/modules/search_cep_mvc/controller/search_cep_controller.dart';
import 'package:playground_services/src/modules/search_cep_mvc/repository/search_cep_repository.dart';
import 'package:playground_services/src/modules/search_cep_mvc/view/searc_cep_view.dart';

class SearchCepModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio()),
    Bind((i) => SearchCepRepository(i())),
    Bind((i) => SearchCepController(i())),
  ];
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (context, args) => SearchCepView(
              controller: context.read(),
            )),
  ];
}
