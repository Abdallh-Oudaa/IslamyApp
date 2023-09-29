import 'package:flutter/material.dart';
import 'package:islamy/ui/home/My_Theme.dart';
import 'package:islamy/ui/home/hades/HadethChapterDetalis.dart';
import 'package:islamy/ui/home/home_screen.dart';
import 'package:islamy/ui/home/quran/chapterDetalis/Quran_Chapter_Detalis.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(my_app());
}

class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'), // English
        Locale('en'), // Arabic
      ],
      locale: Locale("ar"),
      debugShowCheckedModeBanner: false,
      theme: My_Theme.light_Theme,
      darkTheme: My_Theme.Dark_Theme,
      themeMode: ThemeMode.dark,
      initialRoute: home_screen.RoutName,
      routes: {
        // Splash_screen.RoutName:(context)=>Splash_screen(),
        home_screen.RoutName: (context) => home_screen(),
        quran_Chapter_Detalis.RoutName: (context) => quran_Chapter_Detalis(),
        Hadeth_Chapet_Detalis.RoutName: (context) => Hadeth_Chapet_Detalis(),
      },
    );
  }
}
