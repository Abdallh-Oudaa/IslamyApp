import 'package:flutter/material.dart';
import 'package:islamy/ui/home/My_Theme.dart';
import 'package:islamy/ui/home/Tasbeh/TasbehTab.dart';
import 'package:islamy/ui/home/hades/HadesTab.dart';
import 'package:islamy/ui/home/quran/QuranTab.dart';
import 'package:islamy/ui/home/radio/RadioTab.dart';
import 'package:islamy/ui/home/settings/Settings_Tap.dart';

// ignore: must_be_immutable
class home_screen extends StatefulWidget {
  static const String RoutName = "jhhkj";

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
            title: Text("Islamy"),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  backgroundColor:Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
                  label: "quran",
                ),
                BottomNavigationBarItem(
                     backgroundColor:Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png")),
                    label: "hadeth"),
                BottomNavigationBarItem(
                  backgroundColor:Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                  label: "sebha",
                ),
                BottomNavigationBarItem(
                     backgroundColor:Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
                    label: "radio"),
                    BottomNavigationBarItem(
                      backgroundColor: Theme.of(context).primaryColor,
                      icon: Icon(Icons.settings),label: "settings"),
              ]),
          body: Taps[selectedIndex],
        ),
      ),
    );
  }

  List<Widget> Taps = [
    Quran_Tap(),
    Hades_Tap(),
    Tasbeh_Tap(),
    Radio_Tab(),
    Settings_Tap(),
  ];
}
