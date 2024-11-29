import 'package:flutter/material.dart';
import 'package:flutter_application_2/colortheme.dart';

class RadioFragment extends StatelessWidget {
  const RadioFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
      Image.asset('assets/radio.png'),
      SizedBox(height: 20,),
      Text(' the radio', style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),),
      SizedBox(height: 25,),
    Container(
      width: 300,
      decoration: BoxDecoration(
              color: Colortheme.Primarycolor,
         borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous_sharp,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.pause,color: Colors.white,)),       
           IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,color: Colors.white,)),
        ],
      ),
    )
       ],
       ),
      ),
    );
  }
}