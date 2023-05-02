import 'package:basic/cart/view/cart.dart';
import 'package:basic/utils/routes.dart';
import 'package:basic/new_structure/view/starting.dart';
import 'package:basic/wishlist/view/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'landing/view/landing.dart';
import 'landing/view/test_landing.dart';
import 'login/view/login_page.dart';
import 'utils/themes.dart';

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
      initialRoute: MyRoutes.landingRoute,
      routes: {
        // "/": (context) => LoginPage(),
        MyRoutes.startingRoute: (context) => Starting(),
        MyRoutes.landingRoute: (context) => Landing(),
        MyRoutes.cartRoute: (context) => Cart(),
        MyRoutes.wishlistRoute: (context) => Wishlist(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
