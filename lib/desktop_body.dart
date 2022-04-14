import 'package:flutter/material.dart';
import 'package:youtube_web_ui/youtube_button.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey=GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        semanticLabel: "Привет",
        child:
        ListView(
          children: [
            DrawerHeader(child:
            Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/1280px-YouTube_Logo_2017.svg.png", height: 60 , width: 120
              ,)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("дом милый дом"),),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text("компас"),),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("МУСОР"),),
            ListTile(
              leading: Icon(Icons.archive),
              title: Text("АРХИВ"),),
            ListTile(
              leading: Icon(Icons.collections),
              title: Text("OH, MY CUM COLLECTIONS"),),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("История"),),
            Divider(height: 1, thickness: 1,),
            ListTile(
              leading: Icon(Icons.smart_display),
              title: Text("Мои видео"),),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("ОБНОВЛЯЙ"),),
            ListTile(
              leading: Icon(Icons.playlist_play),
              title: Text("плейлисты"),),
            ListTile(
              leading: Icon(Icons.keyboard_arrow_down),
              title: Text("вали в подробнее"),),
            ListTile(
              leading: Icon(Icons.eighteen_mp),
              title: Text("как дела"),),
            ListTile(
              leading: Icon(Icons.eighteen_mp),
              title: Text("как дела"),),
            Divider(height: 1, thickness: 1,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("PaDPESki"),
            )
          ],
        ),
      ),
      appBar: AppBar(
// Here we take the value from the MyHomePage object that was created by
// the App.build method, and use it to set our appbar title.
        centerTitle: true,
        leading: Row(
          mainAxisSize: MainAxisSize.min ,
          children: [
            IconButton(onPressed: (){scaffoldKey.currentState!.openDrawer();}, icon: Icon(Icons.menu)),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/1280px-YouTube_Logo_2017.svg.png", height: 34 , width: 100 ,),
            ),
          ],
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(),
                      suffix: IconButton(icon: Icon(Icons.keyboard),
                        onPressed: (){},
                        color: Colors.lightGreen,
                      ),
                      hintText: "Введите запрос"),
                ),
              ),
              MaterialButton(onPressed: (){},
                minWidth: 132,
                height: MediaQuery.of(context).size.height,
                color: Colors.black.withOpacity(0.5),
                child: Icon(Icons.search, size: 32,),
              ),
              CircleAvatar(child: Icon(Icons.mic_rounded), radius: 24, backgroundColor: Colors.black12,),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.apps_outlined)),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(radius: 14,),
          )
        ],
      ),
      body: Row(children: [
        Expanded(
          child: Column(children: [
            Padding(padding: EdgeInsets.all(8),
              child: AspectRatio(aspectRatio: 16/6 ,child: Container(color: Colors.white,)),),
            Expanded(
              child: ListView(children: [
                ListTile(contentPadding: EdgeInsets.all(20) ,title: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text("Video name"),
                ),
                  subtitle: Text("100000000000 просмотров"),
                  trailing: Row(mainAxisSize: MainAxisSize.min,
                    children: [
                      ytButton(Icons.thumb_up, "Нравится", false),
                      ytButton(Icons.thumb_down, "Говно", false),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
                    ],),
                ),
                Divider(indent:  2, height: 2, thickness: 2, endIndent: 2,),
                ListTile(
                  minVerticalPadding: 22,
                  leading: CircleAvatar(radius: 24, backgroundColor: Colors.black,),
                  title: Text("channel name"),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ПАДпеРепещик кол-во"),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("АпяСание", style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                  trailing: ElevatedButton(
                    child: Text("ПАДПЕСАТЬСЯ"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: (){},
                  ) ,
                ),
                Divider(indent:  2, height: 2, thickness: 2, endIndent: 2,),
                ListTile(
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("666 биткойнов"),
                      SizedBox(width: 8,),
                      Icon(Icons.unfold_more),
                      Text("UpaRADAchit")
                    ],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.deepPurple,
                  ),
                  title: SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(decoration: InputDecoration(border: UnderlineInputBorder(), hintText: "Введите запрос"),),
                    ),
                  ),
                ),
                for(var index=0; index<12;index++)
                  ListTile(
                    leading: CircleAvatar(radius: 12,),
                    title: Text('автор комментария'),
                    subtitle: Text('комментарий'),
                    trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: (){},),
                  ),
              ],),
            )
          ],),
        ),
        Container(width: 400, child: ListView(children: [
          ListTile(title: SizedBox(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Chip(label: Text("Все видео"),),
                Chip(label: Text("Рекомендации"),),
                Chip(label: Text("Тренды"),)
              ],),
          ),),
          for(var index=0; index<12;index++)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(height: MediaQuery.of(context).size.height/3,),

                ListTile(
                  leading: CircleAvatar(radius: 12,),
                  title: Text('автор комментария'),
                  subtitle: Text('комментарий'),
                  trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: (){},),
                ),
              ],
            ),
        ],),)
      ],),
    );
  }
}
