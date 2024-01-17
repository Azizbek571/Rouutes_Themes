import 'package:flutter/material.dart';
import 'package:routes_themes/routes/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copywith(
      //   primaryColor: Colors.blueGrey[900],
      //      scaffoldBackgroundColor: Colors.red[100],
      // )
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.red[100],
        fontFamily: 'Times New Roman'
      ),
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}