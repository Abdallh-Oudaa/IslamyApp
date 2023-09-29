import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/ui/home/hades/ClassModel.dart';
import 'package:islamy/ui/home/hades/HadethTiltleWedgit.dart';

// ignore: must_be_immutable
class Hades_Tap extends StatefulWidget {
  @override
  State<Hades_Tap> createState() => _Hades_TapState();
}

class _Hades_TapState extends State<Hades_Tap> {
  @override
  Widget build(BuildContext context) {
    if (AllaHadeth.isEmpty) {
      loadString();
    }
    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo.png"),
        Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ))),
            child: Text(
              "Hadeth",
              style: TextStyle(fontSize: 23),
            )),
        AllaHadeth.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Expanded(
                flex: 6,
                child: ListView.separated(
                    itemBuilder: (context, index) =>
                        Hadeth_Title_Wedgit(AllaHadeth[index]),
                    separatorBuilder: (context, index) => Container(
                          color: Color(0xFFB7935F),
                          width: double.infinity,
                          height: 2,
                        ),
                    itemCount: AllaHadeth.length),
              )
      ],
    );
  }
  List<Hadeth> AllaHadeth = [];
  void loadString() async {
    String LoadHadethFile =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> HadethList = LoadHadethFile.trim().split("#");
    for (int i = 0; i < HadethList.length; i++) {
      String SingelHadeth = HadethList[i];
      List<String> LinsHadeth = SingelHadeth.trim().split("\n");
      String HadethTilte = LinsHadeth[0];
      LinsHadeth.removeAt(0);
      String content = LinsHadeth.join("\n");
      Hadeth h = Hadeth(HadethTilte, content);
      AllaHadeth.add(h);
    }
    setState(() {});
  }
}
