import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/provider_class.dart';
import 'package:provider/provider.dart';

class LangugeBottomSheet extends StatelessWidget {
  const LangugeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var SettingsProvider=Provider.of<settings_provider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      width: double.infinity,
      color: Theme.of(context).bottomSheetTheme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () =>SettingsProvider.change_languge("ar") ,
            child:
            SettingsProvider.current_local=="ar"?
             GetSelctedItme(AppLocalizations.of(context)!.arabic, context):
             GetUnSelctedItme(AppLocalizations.of(context)!.arabic, context),
             
             ),
          InkWell(
            onTap: () => SettingsProvider.change_languge("en"),
            child:
            SettingsProvider.current_local=="en"?
             GetSelctedItme(AppLocalizations.of(context)!.english, context):
             GetUnSelctedItme(AppLocalizations.of(context)!.english, context),
             ),
        ],
      ),
    );
  }

  Widget GetSelctedItme(String LangugeText, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          LangugeText,
          style: TextStyle(fontSize: 18, color: Theme.of(context).dividerColor),
        ),
        Icon(
          Icons.check,
          color: Color(0xFFB7935F),
        ),
      ],
    );
  }

  Widget GetUnSelctedItme(String LangugeText, BuildContext context) {
    return Text(
      LangugeText,
      style: TextStyle(
          fontSize: 18, color: Theme.of(context).colorScheme.background),
    );
  }
}
