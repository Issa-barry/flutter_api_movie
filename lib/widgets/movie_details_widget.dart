import 'package:api_tp/models/movie.dart';
import 'package:api_tp/providers/movie_provider.dart';
import 'package:api_tp/services/movie_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieDetailsWidget extends StatelessWidget {
  MovieDetailsWidget({Key? key}) : super(key: key);
  MovieService _movieService = MovieService();

  @override
  Widget build(BuildContext context) {
    // print(_movieService.getMovie());

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            context.read<MovieProvider>().movie!.title!,
          ),
          Text(context.read<MovieProvider>().movie!.originalTitle!),
          Image.network(
            context.read<MovieProvider>().movie!.movieBanner!,
            width: MediaQuery.of(context).size.width - 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width - 20,
            child: Text(context.read<MovieProvider>().movie!.description!),
          )
        ],
      ),
    );
  }
}
