import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground_services/src/modules/games/external/datasources/games_datasource.dart';
import 'package:uno/uno.dart';

import 'presenter/pages/games_page.dart';
import 'domain/usecases/games_usecase.dart';
import 'presenter/stores/store/games_store.dart';
import 'infra/repositories/games_repository.dart';

class GamesModule extends Module {
  @override
  List<Bind> binds = [
    Bind.factory((i) => Uno()),
    Bind.factory((i) => GamesDatasource(i())),
    Bind.factory((i) => GamesRepository(i())),
    Bind.factory((i) => GamesUsecase(i())),
    Bind.singleton((i) => GamesStore(i())),
  ];

  @override
  List<ModularRoute> routes = [
    ChildRoute('/',
        child: (context, args) => GamesPage(
              store: context.read(),
            )),
  ];
}
