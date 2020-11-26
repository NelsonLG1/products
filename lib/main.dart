import 'package:flutter/material.dart';
import 'package:products/apps/pages/splash/splash_page.dart';
import 'package:products/apps/utils/routes.dart';
import 'package:products/apps/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store Nelson',
      theme: lightTheme(),
      home: SplashScreen(),
      routes: appRoutes,
    );
  }
}

