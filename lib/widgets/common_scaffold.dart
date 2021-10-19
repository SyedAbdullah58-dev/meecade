import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CommonScaffold extends StatelessWidget {
  CommonScaffold({
    this.child
  }) ;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: gradientColors,

          )

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: child,

      ),
    );
  }
}