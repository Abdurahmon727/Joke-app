import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:joke_app/features/joke/presentation/joke_page.dart';
// import 'package:joke_app/features/joke/presentation/pages/second_page.dart';

import 'core/data/service_locator.dart';

void main() {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = GoRouter(
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: Text('error')),
    ),
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => JokePage(),
      ),
      // GoRoute(
      //   path: '/second_page/:num',
      //   builder: (context, state) {
      //     return SecondPage(
      //       num: state.params['num']!,
      //     );
      //   },
      // ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Joke app',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        fontFamily: 'Tilt',
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
      ),
      darkTheme: ThemeData(
        fontFamily: 'Tilt',
        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
