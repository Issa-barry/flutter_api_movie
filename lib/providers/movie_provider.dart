import 'package:api_tp/models/movie.dart';
import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {
  Movie? _movie;

  //Getters / Setters
  Movie? get movie => _movie;

  set movie(Movie? movie) {
    _movie = movie;
    notifyListeners();
  }
}
