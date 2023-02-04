// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/colors.dart';
import 'package:portfolio_app/home.dart';

import 'footer.dart';
import 'middle.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Coolers.accentColor),
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HomeScreen(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        '/':(context)=> HomeScreen(),
        MyRoutes.homeRoute:(context)=> HomeScreen(),
        MyRoutes.ProjectsRoute:(context)=> MiddleScreen(),
        MyRoutes.ContactRoute:(context)=> FooterScreen(),
      },
    );
  }
}




