import 'package:flutter/cupertino.dart';

Widget ytButton(IconData icon, String slova, bool minecraft){
  if (minecraft==true) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        Text(slova),
      ],
    );
  } else{
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          SizedBox(width: 4,),
          Text(slova, style: TextStyle(fontSize: 25),),
        ],
      ),
    );
  }
}