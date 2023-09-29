import 'package:flutter/material.dart';

class LangugeBottomSheet extends StatelessWidget {
  const LangugeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      width: double.infinity,
      color: Theme.of(context).bottomSheetTheme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetSelctedItme("العربيه", context),
          GetUnSelctedItme("english", context),
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
