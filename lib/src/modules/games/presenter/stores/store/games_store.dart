import 'package:flutter_triple/flutter_triple.dart';
import 'package:playground_services/src/modules/games/domain/usecases/i_games_usecase.dart';

import '../state/games_state.dart';

class GamesStore extends StreamStore<Exception, GamesState> {
  final IGamesUsecase _usecase;

  GamesStore(this._usecase) : super(GamesState(games: []));

  Future<void> getGames() async {
    setLoading(true);
    final result = await _usecase();
    result.fold((l) => setError(l), (r) => update(state.copyWith(r)));
    setLoading(false);
  }
}
