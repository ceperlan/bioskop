import 'package:dio/dio.dart';
import 'package:nonton_asep/models/movie_model.dart';

class MovieService {
  final baseUrl = 'https://api.themoviedb.org';
  final apiKey = 'ab3a67a225bfc7da852014189004fcb5';
  final dio = Dio();

  Future<List<MovieModel>> getPlayingNowMovies() async {
    try {
      final res = await dio.get('$baseUrl/3/movie/now_playing?api_key=$apiKey');
      //print(res.data['results']);
      //print(res.statusCode);
      final List data = res.data['results'] as List;
      final movies = data.map((e) => MovieModel.fromJson(e)).toList();
      print(movies);
      return movies;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  Future<List<MovieModel>> getPopulerNowMovies() async {
    try {
      final res = await dio.get('$baseUrl/3/movie/top_rated?api_key=$apiKey');
      print('$baseUrl/3/movie/top_rated?api_key=$apiKey');
      final List data = res.data['results'] as List;
      final movies = data.map((e) => MovieModel.fromJson(e)).toList();
      print(movies);
      return movies;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
