import 'package:dartz/dartz.dart';

import '../datasources/i_games_datasource.dart';
import '../../domain/entities/games_entity.dart';
import '../../domain/repositories/i_games_repository.dart';

class GamesRepository implements IGamesRepository {
  final IGamesDatasource _datasource;

  const GamesRepository(this._datasource);

  @override
  Future<Either<Exception, List<GamesEntity>>> getGames() async {
    try {
      final result = await _datasource.getGames();
      return Right(result);
    } catch (e) {
      return left(Exception(e.toString()));
    }
  }
}
