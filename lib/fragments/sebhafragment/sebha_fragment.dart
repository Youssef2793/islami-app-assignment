import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/colortheme.dart';

class SebhaFragment extends StatefulWidget {

  @override
  State<SebhaFragment> createState() => _SebhaFragmentState();
}

class _SebhaFragmentState extends State<SebhaFragment> {
double rotationAngle = 0;
int counter=0;


  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Container(
     child: 
         Column(
         children:[
             Container(
              margin: EdgeInsets.only(left: 50),
              child: Image.asset('assets/head of seb7a.png',fit: BoxFit.cover,)),

        InkWell(
              onTap: () {
                setState(() {
                  rotationAngle += pi / 3.14; 
                  counter++;
                });
              },
              child: Transform.rotate(
                angle: rotationAngle,
                child: Image.asset('assets/body of seb7a.png'),
              ),
            ),
  

             SizedBox(
              height: 20,),

Text('tasbeh numbers',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    
                    ),),


              Container(
                width: 55,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colortheme.Primarycolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text('${counter}',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
               Container(
                       width: 130,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colortheme.Primarycolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                      child: Row(children: [Text('subhan allah',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),)])),

             ],
            ),
          
        ), 
      );
  }
 counternum(){
  if (counter==30){
    return counter==0;
  }else{
    counter++;
  }
 }
}

























