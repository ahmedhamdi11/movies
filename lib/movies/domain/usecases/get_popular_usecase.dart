import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movie_repository.dart';

class GetPopularUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetPopularUsecase(this.baseMovieRepository);

  Future<List<Movie>> excute() async {
    return await baseMovieRepository.getPopularMovies();
  }
}
