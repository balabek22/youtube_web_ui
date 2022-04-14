import 'package:flutter/cupertino.dart';

Widget ResponceBody(Widget mobileBody, Widget tabledBody , Widget desktopBody){
  return LayoutBuilder(builder: (_,constraints){
    //return constraints.maxWidth<600?mobileBody:desktopBody;
    if (constraints.maxWidth<600) {
      return mobileBody;
    }  else if (constraints.maxWidth<1000) {
      return tabledBody;
    }  else{
      return desktopBody;
    }
  });
}