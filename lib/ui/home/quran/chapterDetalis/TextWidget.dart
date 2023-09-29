import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Text_Widget extends StatelessWidget {
  String content;
  int index;
  Text_Widget(this.content,this.index);

  @override
  Widget build(BuildContext context) {
    return 
       Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text('$content{$index}',textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,style:Theme.of(context).textTheme.bodyMedium,

          ));
  }
}
