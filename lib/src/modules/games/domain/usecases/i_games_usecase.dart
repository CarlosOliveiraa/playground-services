import 'package:dartz/dartz.dart';
import 'package:playground_services/src/modules/games/domain/entities/games_entity.dart';

abstract class IGamesUsecase {
  Future<Either<Exception, List<GamesEntity>>> call();
}
