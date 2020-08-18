import 'package:flutter/material.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/create_contest.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/login.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lose De Fat Wireframes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/profile': (context) => ProfilePage(),
        '/contest': (context) => CreateContest(),
      },
    );
  }
}
