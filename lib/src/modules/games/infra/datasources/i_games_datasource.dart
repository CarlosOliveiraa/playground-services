import '../../domain/entities/games_entity.dart';

abstract class IGamesDatasource {
  Future<List<GamesEntity>> getGames();
}
