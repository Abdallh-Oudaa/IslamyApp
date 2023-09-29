import 'package:flutter/material.dart';
import 'package:islamy/ui/home/My_Theme.dart';
import 'package:islamy/ui/home/hades/ClassModel.dart';

class Hadeth_Chapet_Detalis extends StatelessWidget {
  static const RoutName="Hadeth_chapter_Detalis";
  @override
  Widget build(BuildContext context) {
     var args=ModalRoute.of(context)?.settings.arguments as Hadeth;
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
          title: Text(args.title,style: TextStyle(fontSize: 24),),
        ),
        body: Column(

          children: [
            Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 65,horizontal: 20),
                child: SingleChildScrollView(
                  child: Text(args.content,style: TextStyle(fontSize: 18,),
                  textAlign: TextAlign.center,
                              ),
                ),
                  ),
            ),
          ],
        ),
    ));
  }
}