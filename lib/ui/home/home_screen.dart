import 'package:flutter/material.dart';
import 'package:islamy/provider_class.dart';

import 'package:islamy/ui/home/Tasbeh/TasbehTab.dart';
import 'package:islamy/ui/home/hades/HadesTab.dart';
import 'package:islamy/ui/home/quran/QuranTab.dart';
import 'package:islamy/ui/home/radio/RadioTab.dart';
import 'package:islamy/ui/home/settings/Settings_Tap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

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
    settings_provider SettingsProvider=Provider.of<settings_provider>(context);
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(SettingsProvider.change_image(),),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_name),
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
                  label: AppLocalizations.of(context)!.quran,
                ),
                BottomNavigationBarItem(
                     backgroundColor:Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png")),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                  backgroundColor:Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                  label: AppLocalizations.of(context)!.sebha,
                ),
                BottomNavigationBarItem(
                     backgroundColor:Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
                    label: AppLocalizations.of(context)!.redio),
                    BottomNavigationBarItem(
                      backgroundColor: Theme.of(context).primaryColor,
                      icon: Icon(Icons.settings),label: AppLocalizations.of(context)!.settings),
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
