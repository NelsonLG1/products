import 'package:flutter/material.dart';

import 'widgets/list_pais.dart';

class PaisesPage extends StatelessWidget {
  static String routeName = 'paises';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Episodios'),
        ),
        body: Padding(padding: EdgeInsets.all(20), child: ListPaises()));
  }
}
