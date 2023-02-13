import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground_services/src/modules/games/games_module.dart';
// import 'src/modules/search_cep_mvc/search_cep_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];
  @override
  final List<ModularRoute> routes = [
    // ModuleRoute('/', module: SearchCepModule()),
    ModuleRoute('/', module: GamesModule()),
  ];
}
