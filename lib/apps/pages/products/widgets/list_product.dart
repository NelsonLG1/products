import 'package:flutter/material.dart';
import 'package:products/apps/widgets/loading.dart';
import 'package:products/data/remote/Product_provider.dart';
import 'package:products/domain/entities/products.dart';
import 'list_item_product.dart';

class ListProducts extends StatelessWidget {
  const ListProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Product>>(
        future: ProductApiProvider().getProducts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final List<Product> product = snapshot.data;

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: product.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return ListItemProduct(product: product[index]);
              },
            );
          }
          return LoadingHome();
        },
      ),
    );
  }
}
