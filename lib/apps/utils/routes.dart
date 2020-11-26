import 'package:flutter/material.dart';
import 'package:products/apps/pages/paises/paises_page.dart';
import 'package:products/apps/pages/products/products_page.dart';
import 'package:products/apps/pages/home/home_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  HomePage.routeName: (_) => HomePage(),
  ProductsPage.routeName: (_) => ProductsPage(),
  PaisesPage.routeName: (_) => PaisesPage(),
};
