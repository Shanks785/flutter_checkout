import 'package:basic/utils/routes.dart';
import 'package:basic/new_structure/view/starting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    int days = 10;
    String name = "Hello World";
    double pi = 3.14;
    bool isMale = true;
    num temp =30.5;  // can be int & double both
    var day = "Monday"; // var is dynamic type
    const pix = 3.14;
    final piy = 3.14;

    return MaterialApp(
      title: 'Flutter Basics',
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // home: HomePage(),
      initialRoute: MyRoutes.startingRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.startingRoute: (context) => Starting(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
