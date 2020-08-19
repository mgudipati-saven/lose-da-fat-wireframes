import 'package:flutter/material.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/contest.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/contests.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/create_contest.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/login.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/profile.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/recipes.dart';

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
