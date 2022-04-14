import 'package:flutter/material.dart';
import 'package:youtube_web_ui/youtube_button.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
// Here we take the value from the MyHomePage object that was created by
// the App.build method, and use it to set our appbar title.
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png"),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.apps_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(radius: 14,),
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Padding(padding: EdgeInsets.all(8),
          child: AspectRatio(aspectRatio: 16/9 ,child: Container(color: Colors.white,)),),
        Expanded(child: ListView(children: [
          ListTile(title: Text("Название видео"),
          subtitle: Text("Кол-во просмотров"),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ytButton(Icons.ac_unit, "блабла", true),
                ytButton(Icons.ac_unit, "блабла", true),
                ytButton(Icons.ac_unit, "блабла", true),
                ytButton(Icons.ac_unit, "блабла", true),
                ytButton(Icons.ac_unit, "блабла", true),
              ],
            ),
          ),
          Divider(height: 0.4, thickness: 0.4,),
          ListTile(
            leading: CircleAvatar(
              radius: 14,
              backgroundColor: Colors.cyanAccent,
            ),
            title: Text('Название Канала'),
            subtitle: Text('Подпищики'),
            trailing: TextButton(
              child: Text('ПОДПИСАТЬСЯ', style: TextStyle(color: Colors.red),),
              onPressed: (){},
            ),
          ),
          Divider(height: 0.4, thickness: 0.4,),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('комментарии 5'),
            ),
            trailing: Icon(Icons.ac_unit),
            subtitle: ListTile(
              leading: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 12,
            ),
            title: Text("UwU"),
            ),
          ),
          for(var index=0; index<12;index++)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(height: MediaQuery.of(context).size.height/3, color: Colors.pink,),
                ListTile(
                  leading: CircleAvatar(radius: 12,),
                  title: Text('автор комментария'),
                  subtitle: Text('комментарий'),
                  trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: (){},),
                ),
              ],
            ),
        ],))
      ],),
    );
  }
}
