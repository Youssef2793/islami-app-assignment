import 'package:flutter/material.dart';

class Suravarios extends StatelessWidget {
final String varios;
Suravarios(this.varios);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[ 
          Text(varios)
          ]),
    );
  }
}