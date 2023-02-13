import 'package:playground_services/shareds/entity.dart';

class GamesEntity extends Entity {
  final int id;
  final String title;
  final String thumbnail;
  final String shortDescription;
  final String gameUrl;
  final String genre;
  final String platform;
  final String publisher;
  final String developer;
  final String releaseDate;
  final String freetogameProfileUrl;

  const GamesEntity({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.shortDescription,
    required this.gameUrl,
    required this.genre,
    required this.platform,
    required this.publisher,
    required this.developer,
    required this.releaseDate,
    required this.freetogameProfileUrl,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        thumbnail,
        shortDescription,
        gameUrl,
        genre,
        platform,
        publisher,
        developer,
        releaseDate,
        freetogameProfileUrl,
      ];
}
