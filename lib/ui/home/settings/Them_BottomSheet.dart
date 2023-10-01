import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:islamy/provider_class.dart';
import 'package:provider/provider.dart';

class ThemBottomSheet extends StatelessWidget {
  const ThemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    settings_provider SettingsProvider =
        Provider.of<settings_provider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      width: double.infinity,
      color: Theme.of(context).bottomSheetTheme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => SettingsProvider.change_ThemeMode(ThemeMode.light),
            child: SettingsProvider.isdarkEnabled()
                ? GetUnselctedItem(AppLocalizations.of(context)!.light, context)
                : GetSelectedItme(AppLocalizations.of(context)!.light, context),
          ),
          InkWell(
            onTap: () => SettingsProvider.change_ThemeMode(ThemeMode.dark),
            child: SettingsProvider.isdarkEnabled()?
                 GetSelectedItme(AppLocalizations.of(context)!.dark, context)
                : GetUnselctedItem(
                    AppLocalizations.of(context)!.dark, context),
          ),
        ],
      ),
    );
  }

  Widget GetSelectedItme(String text, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Theme.of(context).dividerColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).dividerColor,
        ),
      ],
    );
  }

  Widget GetUnselctedItem(String text, BuildContext context) {
    return Row(
      children: [
        Text(
         text,
          style: TextStyle(
              fontSize: 18, color: Theme.of(context).colorScheme.background),
        ),
      ],
    );
  }
}
