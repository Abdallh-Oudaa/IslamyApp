import 'package:flutter/material.dart';
import 'package:islamy/ui/home/quran/chapterDetalis/Quran_Chapter_Detalis.dart';

// ignore: must_be_immutable
class quran_chapter_Title extends StatelessWidget {
  String title;
  int index;
  quran_chapter_Title(this.title,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(quran_Chapter_Detalis.RoutName,
        arguments: Data_Model_Quran(title,index));
      },
      child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
