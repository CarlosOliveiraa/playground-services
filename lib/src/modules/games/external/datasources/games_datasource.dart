import 'package:playground_services/src/modules/games/external/mappers/games_mapper.dart';
import 'package:uno/uno.dart';
import '../../domain/entities/games_entity.dart';
import '../../infra/datasources/i_games_datasource.dart';

class GamesDatasource implements IGamesDatasource {
  final Uno uno;

  const GamesDatasource(this.uno);

  @override
  Future<List<GamesEntity>> getGames() async {
    try {
      final response = await uno.get('https://www.freetogame.com/api/games');

      return GamesMapper().toList(response.data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
