import 'package:flutter/material.dart';

import 'pages/contest.dart';
import 'pages/contests.dart';
import 'pages/create_contest.dart';
import 'pages/login.dart';
import 'pages/profile.dart';
import 'pages/recipes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lose Da Fat Wireframes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => ContestsPage(),
        '/profile': (context) => ProfilePage(),
        '/contest': (context) => ContestPage(),
        '/contest/add': (context) => CreateContest(),
        '/recipes': (context) => RecipePage(),
      },
    );
  }
}
