import 'package:flutter/material.dart';

import 'widgets/list_product.dart';

class ProductsPage extends StatelessWidget {
  static String routeName = 'products';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Episodios'),
        ),
        body: Padding(padding: EdgeInsets.all(20), child: ListProducts()));
  }
}
