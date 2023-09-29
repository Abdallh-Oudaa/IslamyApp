
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class ThemBottomSheet extends StatelessWidget {
  const ThemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
      width: double.infinity,
      color: Theme.of(context).bottomSheetTheme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        GetSelectedItme(AppLocalizations.of(context)!.light,context),
        GetUnselctedItem(AppLocalizations.of(context)!.dark,context), 
        ],
      ),
    );
  }

  Widget GetSelectedItme(String text,BuildContext context){
     return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,style:TextStyle(fontSize: 18,color:Theme.of(context).dividerColor),),
              Icon(Icons.check,color:Theme.of(context).dividerColor,),
            ],
          ); }

  Widget GetUnselctedItem(String text,BuildContext context){
     return Text(AppLocalizations.of(context)!.dark,style: TextStyle(fontSize: 18,color: Theme.of(context).colorScheme.background),);
  }
}