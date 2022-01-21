import 'package:api_tp/models/movie.dart';
import 'package:api_tp/providers/movie_provider.dart';
import 'package:api_tp/services/movie_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({Key? key}) : super(key: key);
  MovieService _movieService = MovieService();

  @override
  Widget build(BuildContext context) {
    // print(_movieService.getMovie());

    return Container(
      padding: EdgeInsets.all(10),
      child: FutureBuilder(
        future: _movieService.getMovie(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Movie> movies_data = snapshot.data as List<Movie>;
            // print(movies_data);
            return Column(
              children: [
                Text(
                  "Movies",
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(movies_data[index].movieBanner!),
                        title: Text(
                          movies_data[index].title!,
                          style: const TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(
                          movies_data[index].originalTitle!,
                          style: const TextStyle(fontSize: 15),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        onTap: () {
                          // print(movies_data[index].title!);
                          context.read<MovieProvider>().movie =
                              movies_data[index];
                          context.pushNamed('movieDetails');
                          // print(context.read<MovieProvider>().movie);
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        thickness: 2,
                        color: Colors.white10,
                      );
                    },
                    itemCount: movies_data.length,
                    shrinkWrap: true,
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
