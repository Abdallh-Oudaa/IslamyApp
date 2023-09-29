import 'package:flutter/material.dart';
import 'package:islamy/ui/home/settings/Languge_BottomSheet.dart';
import 'package:islamy/ui/home/settings/Them_BottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Settings_Tap extends StatelessWidget {
  const Settings_Tap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 70, horizontal: 8),
      //color:Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.theme,
            style:Theme.of(context).textTheme.labelMedium,
          ),
          InkWell(
            onTap: () => ShowThemeBottomSheet(context),
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).colorScheme.background,
                    )),
                child: Text(AppLocalizations.of(context)!.light,
                  style: TextStyle(fontSize: 18,color:Theme.of(context).dividerColor),
                )),
          ),
          SizedBox(
            height: 45,
          ),
          Text(AppLocalizations.of(context)!.languge,
            style:Theme.of(context).textTheme.labelMedium,
          ),
          InkWell(
            onTap: () {
              ShowLangugeBottomSheet(context);
            },
            child: Container(
                //color: Theme.of(context).colorScheme.primary,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).colorScheme.background,
                    )),
                child: Text(
                  AppLocalizations.of(context)!.english,
                  style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).dividerColor),
                )),
          ),
        ],
      ),
    );
  }

  void ShowThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ThemBottomSheet();
        });
  }
}

void ShowLangugeBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return LangugeBottomSheet();
      });
}
