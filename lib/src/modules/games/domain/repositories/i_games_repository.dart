import 'package:dartz/dartz.dart';

import '../entities/games_entity.dart';

abstract class IGamesRepository {
  Future<Either<Exception, List<GamesEntity>>> getGames();
}
