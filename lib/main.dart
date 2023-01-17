import 'package:flutter/material.dart';
import 'screens/home.dart';
void main(){
  runApp(BMICalculetarApp());
}
class BMICalculetarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor:Color(0xff111328),
        
        scaffoldBackgroundColor:Color(0xff1D1E33), 
      ),
      home: HomeScreen(),
    );
  }
} 