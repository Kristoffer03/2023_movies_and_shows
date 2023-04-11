import 'package:flutter/material.dart';
import '../features/movie_list.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MovieList.route:
        return MaterialPageRoute<dynamic>(builder: (_) => const MovieList());
      default:
        return MaterialPageRoute<dynamic>(builder: (_) {
          return Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          );
        });
    }
  }
}
