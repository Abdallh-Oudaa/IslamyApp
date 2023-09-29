import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/ui/home/My_Theme.dart';
import 'package:islamy/ui/home/quran/chapterDetalis/TextWidget.dart';

// ignore: must_be_immutable
class quran_Chapter_Detalis extends StatefulWidget {
  static const String RoutName = "hhgjhgjh";

  @override
  State<quran_Chapter_Detalis> createState() => _quran_Chapter_DetalisState();
}

class _quran_Chapter_DetalisState extends State<quran_Chapter_Detalis> {
  @override
  Widget build(BuildContext context) {
    Data_Model_Quran agrs =
        ModalRoute.of(context)?.settings.arguments as Data_Model_Quran;
   if(splitLine.isEmpty){
     ReadFile(agrs.index);
   }
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              My_Theme.isEnableDark?"assets/images/image_dark.png":
              "assets/images/main.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
            appBar: AppBar(
              title: Text(agrs.title),
            ),
            body: splitLine.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Card(
               
                  child: ListView.builder(
                      itemBuilder: (context, index) => Text_Widget(
                        splitLine[index],index+1 ),
                      itemCount: splitLine.length,
                    ),
                )));
  }

  List<String> splitLine = [];

  void ReadFile(int index) async {
    String fileText = await rootBundle.loadString('assets/files/${index+1}.txt');
    splitLine=fileText.trim().split("\n");
    setState(() {
      
    });
  }
}

class Data_Model_Quran {
  String title;
  int index;
  Data_Model_Quran(this.title, this.index);
}
