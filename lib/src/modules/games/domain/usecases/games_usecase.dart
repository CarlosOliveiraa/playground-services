import 'package:dartz/dartz.dart';
import 'package:playground_services/src/modules/games/domain/repositories/i_games_repository.dart';

import 'i_games_usecase.dart';
import '../entities/games_entity.dart';

class GamesUsecase implements IGamesUsecase {
  final IGamesRepository _gamesRepository;

  const GamesUsecase(this._gamesRepository);

  @override
  Future<Either<Exception, List<GamesEntity>>> call() async {
    final result = await _gamesRepository.getGames();
    return result;
  }
}
