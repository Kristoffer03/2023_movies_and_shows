import 'package:flutter/material.dart';
import 'package:latest_movies_and_shows/utlities/app_router.dart';

import 'features/movie_list.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final _navigatorKey = GlobalKey<NavigatorState>();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: MaterialApp(
        title: "Socium",
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
        home: Navigator(
          key: _navigatorKey,
          initialRoute: MovieList.route,
          onGenerateRoute: AppRouter.generateRoute,
        ),
      ),
    );
  }
}
