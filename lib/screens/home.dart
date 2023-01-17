//import 'dart:html';

//import 'package:beginner/constrate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constrate.dart';
import '../widgeds/icon_wigdes.dart';
import '../widgeds/reusable_card.dart';
import '../widgeds/roud_botton.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height=180;
  int Weight=65;
  int age=65;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMICalculetarApp'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReucableCard(
                      child: IcomsWigeds(iconData: FontAwesomeIcons.mars, title:'make',),
                    ),
                  ),
                  Expanded(
                    child: ReucableCard(
                      child: IcomsWigeds(iconData: FontAwesomeIcons.venus,
                      title: 'Fimale',),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReucableCard(
                child: Column(
                   mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                   
                  Text('HIEGTH',style: TextStyle(fontSize: 20,color: Colors.grey),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children:[
                      Text(
                        height.toInt().toString(),
                      style: TextStyle(
                        fontSize: 30,
                      fontWeight:FontWeight.w700),
                      ),
                      Text('cm'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Slider(
                    value: height,                     
                    min: 10,
                    max: 310,
                    onChanged: ( NewVal) {                   
                     setState(() {
                        height=NewVal;
                     
                     });
                    },
                  ),
                ]),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReucableCard(
                      child: Column(
                   mainAxisAlignment:MainAxisAlignment.center,
                  children: [                   
                  Text('Weight',
                  style: TextStyle(fontSize: 20,color: Colors.grey),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children:[
                      Text(
                        Weight.toString(),
                      style:TextStyle(fontSize: 30,fontWeight: FontWeight.w700),
                      ),
                      Text('Kg'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Round_Botton(iconData:Icons.remove,
                    onPressed:(){ 
                     setState(() {
                       Weight --;
                     });
                    },),
                    const SizedBox(width: 10,),
                    Round_Botton(iconData: Icons.add,
                    onPressed:(){
                     setState(() {
                       Weight ++;
                     });
                    }, ),
                    
                  ],)
                ])),
                  ),
                  Expanded(
                    child: ReucableCard( child: Column(
                   mainAxisAlignment:MainAxisAlignment.center,
                  children: [                   
                  Text('Age',
                  style: TextStyle(fontSize: 20,color: Colors.grey),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children:[
                      Text(
                        age.toString(),
                      style: TextStyle(
                        fontSize: 30,
                      fontWeight: FontWeight.w700),),
                      Text('years'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Round_Botton(iconData:Icons.remove,
                    onPressed:(){
                      setState(() {
                        age --;
                      });
                    } ,),
                    const SizedBox(width: 10,),
                    Round_Botton(iconData: Icons.add,
                    onPressed:(){
                     setState(() {
                       age ++;
                     });
                    }),
                    
                  ],)
                ]),),
                  ),
                ],
              ),
            ),
            RawMaterialButton(onPressed: (){}, 
            child: Text('Calculeter',style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.w500),),
            fillColor: BottonContainerColour,
            constraints: BoxConstraints.tightFor(
              width: double.infinity,
              height: 56,
              ),
              
            ),

          ],
        )
      );
        
  }
}



