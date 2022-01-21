import 'package:api_tp/providers/movie_provider.dart';
import 'package:api_tp/screens/home_screen.dart';
import 'package:api_tp/services/routing_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MovieProvider(),
        )
      ],
      child: MaterialApp.router(
        routeInformationParser:
            RoutingService().getRoutes().routeInformationParser,
        routerDelegate: RoutingService().getRoutes().routerDelegate,
        title: "Studio BARRY",
        theme: ThemeData.dark(),
        // home: HomeSreen(),
      ),
    );
  }
}
