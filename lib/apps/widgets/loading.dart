

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:products/apps/utils/colors.dart';

class LoadingHome extends StatelessWidget {
  const LoadingHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SpinKitRipple(
            color: appPrimaryColor,
        )
    );
  }
}

