import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/views/home_view.dart';
import 'package:testflutterdevelopersolusidigital/app/routes/app_route.dart';
import 'package:testflutterdevelopersolusidigital/app/routes/route_name.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoute.routes(),
      initialRoute: RouteName.HOME,
      theme: ThemeData(
        fontFamily: GoogleFonts.rubik().fontFamily,
      ),
    );
  }
}
