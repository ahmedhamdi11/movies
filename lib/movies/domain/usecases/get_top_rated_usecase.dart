import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movie_repository.dart';

class GetTopRatedUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedUsecase(this.baseMovieRepository);

  Future<List<Movie>> excute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
