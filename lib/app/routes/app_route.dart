import 'package:flutter/cupertino.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/views/home_view.dart';
import 'package:testflutterdevelopersolusidigital/app/routes/route_name.dart';

class AppRoute {
  static Map<String, Widget Function(BuildContext)> routes() => {
        RouteName.HOME: (context) => HomeView(),
      };
}
