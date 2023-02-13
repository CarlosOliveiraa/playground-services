import '../../../domain/entities/games_entity.dart';

class GamesState {
  final List<GamesEntity> games;

  GamesState({
    this.games = const [],
  });

  GamesState copyWith(List<GamesEntity>? games) {
    return GamesState(games: games ?? this.games);
  }
}
