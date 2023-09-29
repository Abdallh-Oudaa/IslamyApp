// ignore_for_file: unused_label

import 'package:flutter/material.dart';
import 'package:islamy/ui/home/hades/ClassModel.dart';
import 'package:islamy/ui/home/hades/HadethChapterDetalis.dart';

// ignore: must_be_immutable
class Hadeth_Title_Wedgit extends StatelessWidget {
  Hadeth HaadethTile;
  Hadeth_Title_Wedgit(this.HaadethTile);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
     Navigator.of(context).pushNamed(Hadeth_Chapet_Detalis.RoutName,
     arguments: HaadethTile);
      },
      child: Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              HaadethTile.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )),
    );
  }
}