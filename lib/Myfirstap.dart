import 'package:flutter/material.dart';
import 'package:flutter_application_2/colortheme.dart';
import 'package:flutter_application_2/fragments/ahadethfragment/ahadeth_fragment.dart';
import 'package:flutter_application_2/fragments/quranfragment/quran_fragment.dart';
import 'package:flutter_application_2/fragments/radiofragment/radio_fragment.dart';
import 'package:flutter_application_2/fragments/sebhafragment/sebha_fragment.dart';

class Myfirstapp extends StatefulWidget{
  static const String routname='Home';

  @override
  State<Myfirstapp> createState() => _MyfirstappState();
}
class _MyfirstappState extends State<Myfirstapp> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image1.png'),
          fit: BoxFit.cover 
          )
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text("Islami"),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colortheme.Primarycolor),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex=value;
              });
            },
            items:[
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icon/quran.png")), label: "quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icon/ahadeth.png")), label: "ahadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icon/sebha.png")), label: "sebha"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icon/radio.png")), label: "radio"),
            ]
            ),
        ),
        body: getbody(currentIndex),
      ),
    );
  }
}
Widget getbody(int currentIndex){
  if (currentIndex==0){
return Quranfragment();
  }else if (currentIndex==1){
    return AhadethFragment();
  }else if (currentIndex==2){
    return SebhaFragment();
  }else {
    return RadioFragment();
  }
}