import 'package:api_tp/screens/home_screen.dart';
import 'package:api_tp/screens/movie_details.dart';
import 'package:go_router/go_router.dart';

class RoutingService {
  GoRouter getRoutes() {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => HomeSreen(),
        ),
        GoRoute(
          path: '/details',
          name: 'movieDetails',
          builder: (context, state) => MovieDetails(),
        )
      ],
    );
  }
}
