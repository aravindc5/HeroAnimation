import 'package:flutter/material.dart';
import 'package:hero_animation/ui/details_page.dart';
import 'package:hero_animation/ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        DetailsScreen.routeName: (context) => DetailsScreen(),
      },
    );
  }
}
