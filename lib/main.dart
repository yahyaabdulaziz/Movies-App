import 'package:flutter/material.dart';
import 'package:movie/ui/details_screen/details_screen.dart';
import 'package:movie/ui/home_screen/home_screen.dart';
import 'package:movie/ui/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        DetailsScreen.routeName: (_) => DetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
