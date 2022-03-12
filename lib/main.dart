import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footonlineflutter/pages/login_page.dart';
import 'package:footonlineflutter/pages/root_page.dart';
import 'rout.dart' as rout;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute:rout.generateRoute,
    home: LoginPage(),
    
  ));
}
