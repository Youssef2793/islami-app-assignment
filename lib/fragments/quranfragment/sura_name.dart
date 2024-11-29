import 'package:flutter/material.dart';
import 'package:flutter_application_2/fragments/quranfragment/suradetails.dart';

class SuraName extends StatelessWidget {
 final String suraName;
  final fileName;
  SuraName(this.suraName,this.fileName);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, Suradetails.routeName,
          arguments: SuradetailArg(suraName,'${fileName+1}.txt')
          );
        },
        child: Container(
        child: Text(suraName, style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
class SuradetailArg{
    String suraName;
    String fileName;
    SuradetailArg(this.suraName, this.fileName);
  }