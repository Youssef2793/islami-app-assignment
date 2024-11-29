import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/colortheme.dart';
import 'package:flutter_application_2/fragments/quranfragment/sura_name.dart';
import 'package:flutter_application_2/fragments/quranfragment/suravarios.dart';

class Suradetails extends StatefulWidget {
static const String routeName='gege';

  @override
  State<Suradetails> createState() => _SuradetailsState();
}

class _SuradetailsState extends State<Suradetails> {
String suraContent='';

List <String> suralines=[];

  @override
  Widget build(BuildContext context) {
    SuradetailArg arg=ModalRoute.of(context)?.settings.arguments as SuradetailArg;
    readFile(arg.fileName);
    return Container(
     decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/image1.png'),
        fit: BoxFit.cover,
        )
     ),
     child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
centerTitle: true,
title: Text('Islami'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.7)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
        Icon(Icons.play_arrow),
        Text('${arg.suraName}',style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),)
                ],
              ),
              Divider(
             thickness: 1,
             color: Colortheme.Primarycolor,
              ),
              Expanded(child: Container(
             child: ListView.builder(
              itemCount: suralines.length,
              itemBuilder: (context,index){
             return Suravarios(suralines[index]);
              }
              ),
              )),
            ],
          ),
        ),
      ),
     ),
    );
  }

  void readFile(String fileName) async{
   suraContent= await rootBundle.loadString("assets/files/$fileName");
   suralines=suraContent.split("\n");
   setState(() {
     
   });
  }
}