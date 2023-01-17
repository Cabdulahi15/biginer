import 'package:flutter/material.dart';

class Round_Botton extends StatelessWidget {
  final IconData iconData;
  final Function()? onPressed;
  Round_Botton({required this.iconData,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPressed,
    child: Icon(iconData),
    fillColor: Colors.grey,
    shape: CircleBorder(),
    constraints: BoxConstraints.tightFor(
      width: 56,
      height: 56,
    ),
    );
  }
}