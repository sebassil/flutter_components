import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('avatarpage'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://e00-marca.uecdn.es/assets/multimedia/imagenes/2019/11/14/15737172127732.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.pink,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage(
                'https://laverdadnoticias.com/__export/1599309667480/sites/laverdad/img/2020/09/05/mia_khalifa_soldados_video_siria.jpg_423682103.jpg')),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessible_forward),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
