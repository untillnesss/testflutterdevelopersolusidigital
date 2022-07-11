import 'package:flutter/material.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/providers/home_provider.dart';
import 'package:testflutterdevelopersolusidigital/app/routes/app_route.dart';
import 'package:testflutterdevelopersolusidigital/app/routes/route_name.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeProvider>(
      create: (BuildContext context) => HomeProvider(),
      child: MaterialApp(
        routes: AppRoute.routes(),
        initialRoute: RouteName.home,
        theme: ThemeData(
          fontFamily: GoogleFonts.rubik().fontFamily,
        ),
      ),
    );
  }
}
