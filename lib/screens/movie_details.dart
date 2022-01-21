import 'package:api_tp/widgets/appBare_widget.dart';
import 'package:api_tp/widgets/home_widget.dart';
import 'package:api_tp/widgets/movie_details_widget.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBareWidget(),
      body: MovieDetailsWidget(),
    );
  }
}
