import 'package:flutter/material.dart';
import 'package:products/apps/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  static String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                color: appPrimaryColor,
                onPressed: () {
                  _goToPage(context, 'paises');
                },
                child:
                    Text('Paises', style: TextStyle(color: Colors.white))),
            RaisedButton(
                color: appPrimaryColor,
                onPressed: () {
                  _goToPage(context, 'products');
                },
                child: Text('Productos', style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }

  _goToPage(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
