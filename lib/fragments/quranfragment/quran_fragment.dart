import 'package:flutter/material.dart';
import 'package:flutter_application_2/colortheme.dart';
import 'package:flutter_application_2/fragments/quranfragment/sura_name.dart';

class Quranfragment extends StatelessWidget {
final List <String> SuraNames=[
  "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
            "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(flex :3 ,child:  Image(image: AssetImage("assets/icon/QuranIcon.png"))),
     SizedBox(
      height: 40,
     ),
     Divider(
          thickness: 2,
          color: Colortheme.Primarycolor,
        ),

           Column(
            children: [
              Text('Sura names',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
    
     Divider(
          thickness: 2,
          color: Colortheme.Primarycolor,
        ),
      
       Expanded(        
            flex: 7,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colortheme.Primarycolor,
                  thickness: 1,
                );
              },
              itemCount: SuraNames.length,
              itemBuilder: (context,index){
                return SuraName(SuraNames[index],index);
              }
                )
            ),
        ],
      ),
      );
  }
}