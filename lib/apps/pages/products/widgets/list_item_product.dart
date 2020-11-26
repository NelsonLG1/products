import 'package:flutter/material.dart';
import 'package:products/apps/utils/colors.dart';

import '../../../../domain/entities/products.dart';

class ListItemProduct extends StatelessWidget {
  const ListItemProduct({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      child: Card(
        margin: EdgeInsets.only(bottom: 20),
        elevation: 10,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appSecondColor,
            width: 1,
          ),
        ),
        child: Stack(
            children: [
              Image.network(
                product.url,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF343434).withOpacity(0.5),
                      Color(0xFF343434).withOpacity(0.2),
                      Color(0xFF343434).withOpacity(0.05),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name + ' ' + product.sku.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product.description,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      product.price.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          product.bran,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
