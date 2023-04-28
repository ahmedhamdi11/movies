import 'package:movies/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genreIds,
    required super.overview,
    required super.voteAverage,
  });

  factory MovieModel.fromjson(Map<String, dynamic> jsonData) {
    return MovieModel(
      id: jsonData['id'],
      title: jsonData['title'],
      backdropPath: jsonData['backdrop_path'],
      genreIds: List<int>.from(jsonData['genre_ids'].map((e) => e)),
      overview: jsonData['overview'],
      voteAverage: jsonData['vote_average'],
    );
  }
}
