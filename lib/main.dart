import 'package:app_spk/pages/home/home_page.dart';
import 'package:app_spk/pages/product_page.dart';
import 'package:app_spk/pages/select_weight_page.dart';
import 'package:app_spk/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/choose-weight': (context) => SelectWeightPage(),
      },
    );
  }
}
