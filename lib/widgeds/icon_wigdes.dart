import 'package:flutter/material.dart';


class IcomsWigeds extends StatelessWidget {

final IconData iconData;
final String title;

IcomsWigeds({required this.iconData,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData,size: 80,
        ),
        const SizedBox(height: 10,),
        Text(title,style: TextStyle(fontSize: 20,color: Colors.grey),),
      ],
    );
  }
}