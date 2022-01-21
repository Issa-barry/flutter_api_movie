import 'dart:convert';

import 'package:api_tp/models/movie.dart';
import 'package:http/http.dart' as http;

class MovieService {
  Future<List<Movie>> getMovie() async {
    var url = Uri.parse('https://ghibliapi.herokuapp.com/films');
    final request = await http.get(url);

    //Vérification
    if (request.statusCode == 200) {
      List data = jsonDecode(request.body);

      return data.map((e) => Movie.formJson(e)).toList();
    } else {
      throw Error();
    }
  }
}
