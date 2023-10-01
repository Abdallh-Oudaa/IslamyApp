import 'package:flutter/material.dart';
import 'package:islamy/provider_class.dart';

import 'package:islamy/ui/home/hades/ClassModel.dart';
import 'package:provider/provider.dart';

class Hadeth_Chapet_Detalis extends StatelessWidget {
  static const RoutName="Hadeth_chapter_Detalis";
  @override
  Widget build(BuildContext context) {
     var args=ModalRoute.of(context)?.settings.arguments as Hadeth;
     var SettingsProvider=Provider.of<settings_provider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(SettingsProvider.change_image()),
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