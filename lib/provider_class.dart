import 'package:flutter/material.dart';
class settings_provider extends ChangeNotifier{
   ThemeMode current_Theme=ThemeMode.light;
   void change_ThemeMode(ThemeMode newTheme){
    if(current_Theme==newTheme)return;
    current_Theme=newTheme;
    notifyListeners();
   }
   //change bacground image
  String change_image(){
  return current_Theme==ThemeMode.dark?
  "assets/images/image_dark.png":
  "assets/images/main.png"; 
}
bool isdarkEnabled(){
  return current_Theme==ThemeMode.dark;
}
//
String current_local="en";
void change_languge(String new_local){
  if(current_local==new_local)
  {return;}
  else{ current_local=new_local;}
  notifyListeners();
 
}
}