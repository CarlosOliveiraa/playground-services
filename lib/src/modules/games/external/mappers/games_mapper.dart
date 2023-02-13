import 'package:playground_services/shareds/json_mapper.dart';
import 'package:playground_services/src/modules/games/domain/entities/games_entity.dart';

class GamesMapper extends JsonMapper<GamesEntity> {
  @override
  Map<String, dynamic> from(GamesEntity entity) {
    return {
      'id': entity.id,
      'title': entity.title,
      'thumbnail': entity.thumbnail,
      'shortDescription': entity.shortDescription,
      'gameUrl': entity.gameUrl,
      'genre': entity.genre,
      'platform': entity.platform,
      'publisher': entity.publisher,
      'developer': entity.developer,
      'releaseDate': entity.releaseDate,
      'freetogameProfileUrl': entity.freetogameProfileUrl,
    };
  }

  @override
  GamesEntity to(Map<String, dynamic> json) {
    return GamesEntity(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      thumbnail: json['thumbnail'] ?? '',
      shortDescription: json['shortDescription'] ?? '',
      gameUrl: json['gameUrl'] ?? '',
      genre: json['genre'] ?? '',
      platform: json['platform'] ?? '',
      publisher: json['publisher'] ?? '',
      developer: json['developer'] ?? '',
      releaseDate: json['releaseDate'] ?? '',
      freetogameProfileUrl: json['freetogameProfileUrl'] ?? '',
    );
  }
}
