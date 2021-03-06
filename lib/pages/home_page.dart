import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nonton_asep/blocs/home/home_bloc.dart';
import 'package:nonton_asep/services/movie_service.dart';
import 'package:nonton_asep/theme.dart';
import 'package:nonton_asep/widgets/movie_carosel.dart';
import 'package:nonton_asep/widgets/movie_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is HomeSuccess) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 29,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: blackTextStyle.copyWith(
                                fontSize: 28,
                                fontWeight: black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Watch much easier',
                              style: greyTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 55,
                          height: 45,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(
                                259,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_search.png',
                              width: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // children: [
                        //   MovieCarouselItem(
                        //     imageUrl: 'assets/image_movie1.png',
                        //     title: 'John Wick 4',
                        //     rating: 10,
                        //     releaseDate: DateTime(2021, 6, 17),
                        //   ),
                        //   MovieCarouselItem(
                        //     imageUrl: 'assets/image_movie2.png',
                        //     title: 'Bohemian',
                        //     rating: 4,
                        //     releaseDate: DateTime(2020, 5, 11),
                        //   ),
                        // ],
                        children: state.playingNowMovies
                            .map((e) => MovieCarouselItem(movie: e))
                            .toList(),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        left: 24,
                        bottom: 20,
                      ),
                      child: Text(
                        'Top Rate Movies',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: black,
                        ),
                      ),
                    ),
                    // MovieListItem(
                    //   imageUrl: 'assets/image_movie3.png',
                    //   title: 'Mulan Session',
                    //   rating: 6,
                    //   releaseDate: DateTime(2021, 6, 17),
                    // ),
                    // MovieListItem(
                    //   imageUrl: 'assets/image_movie4.png',
                    //   title: 'Beauty & Beast',
                    //   rating: 10,
                    //   releaseDate: DateTime(2021, 6, 17),
                    // ),
                    // MovieListItem(
                    //   imageUrl: 'assets/image_movie5.png',
                    //   title: 'Mulan Session',
                    //   rating: 6,
                    //   releaseDate: DateTime(2021, 6, 17),
                    // ),
                    Column(
                      children: state.playingPopularMovies
                          .map((e) => MovieListItem(movie: e))
                          .toList(),
                    )
                  ],
                ),
              ),
            );
          }
          return Center(
            child: Text('Data tidak bisa dimuat'),
          );
        },
      ),
    );
  }
}
