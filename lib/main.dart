import 'package:flutter/material.dart';
import 'package:flutter_application_2/fragments/quranfragment/suradetails.dart';
import 'Myfirstap.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
debugShowCheckedModeBanner: false,
      routes: {
        Myfirstapp.routname:(context)=>Myfirstapp(),
        Suradetails.routeName:(context)=>Suradetails()
      },
      initialRoute: Myfirstapp.routname,
    );
  }
}