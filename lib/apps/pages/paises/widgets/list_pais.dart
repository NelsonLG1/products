import 'package:flutter/material.dart';
import 'package:products/apps/widgets/loading.dart';
import 'package:products/data/remote/paises_provider.dart';
import 'package:products/domain/entities/paises.dart';
import 'list_item_pais.dart';

class ListPaises extends StatelessWidget {
  const ListPaises({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Pais>>(
        future: PaisApiProvider().getPaises(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final List<Pais> pais = snapshot.data;

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: pais.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return ListItemPais(pais: pais[index]);
              },
            );
          }
          return LoadingHome();
        },
      ),
    );
  }
}
