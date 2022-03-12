import 'package:flutter/material.dart';
import 'package:footonlineflutter/pages/root_page.dart';


Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = new Map<String, dynamic>();

  switch (setting.name) {
    case '/root_page':
      return MaterialPageRoute(builder: (context) => RootApp());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(),
              ));
  }
}
