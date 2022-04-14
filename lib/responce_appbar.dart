import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ResponceAppbar(AppBar mobileBody, AppBar tabledBody , AppBar desktopBody, BuildContext context){
  if (MediaQuery.of(context).size.width<MediaQuery.of(context).size.height) {
    return mobileBody;
  }  else if (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height) {
    return desktopBody;
  }  else{
    return tabledBody;
  }
    //return constraints.maxWidth<600?mobileBody:desktopBody;
}