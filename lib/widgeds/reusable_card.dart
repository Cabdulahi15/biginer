

import 'package:flutter/material.dart';
import '../constrate.dart';

class ReucableCard extends StatelessWidget {
  final Widget ? child;
          ReucableCard({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        color: KIctiveCardColour,
        borderRadius: BorderRadius.circular(12)
        ),
    margin: EdgeInsets.all(10),
        );
  }
}