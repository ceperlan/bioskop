part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailed extends HomeState {}

class HomeSuccess extends HomeState {
  final List<MovieModel> playingNowMovies;
  final List<MovieModel> playingPopularMovies;

  HomeSuccess(this.playingNowMovies, this.playingPopularMovies);

  @override
  List<Object> get props => [playingNowMovies, playingPopularMovies];
}
