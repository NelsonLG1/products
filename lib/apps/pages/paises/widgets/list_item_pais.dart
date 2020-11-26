import 'package:flutter/material.dart';
import 'package:products/apps/utils/colors.dart';

import '../../../../domain/entities/paises.dart';

class ListItemPais extends StatelessWidget {
  const ListItemPais({
    Key key,
    @required this.pais,
  }) : super(key: key);

  final Pais pais;

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
                pais.url,
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
                      pais.name,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      pais.symbol,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      pais.code,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ), 
        // Column(
        //   children: [
        //     Image.network(pais.url,width: 500, height: 80,),
        //     ListTile(
        //       title: Text(
        //         pais.name + ' ' + pais.id.toString(),
        //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        //       ),
        //       subtitle: Text(
        //         pais.symbol.toString(),
        //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        //       ),
        //       trailing: Text(pais.code,
        //           style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
        //       contentPadding: EdgeInsets.all(20),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
