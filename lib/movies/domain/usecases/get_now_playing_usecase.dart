import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movie_repository.dart';

class GetNowPlayingUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingUsecase(this.baseMovieRepository);

  Future<List<Movie>> excute() async {
    return await baseMovieRepository.getNowPlayingMovies();
  }
}
