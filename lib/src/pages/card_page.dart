import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('tu puta madre'),
            subtitle: Text('mamamamamamamamamamamamamam'),
          ),
          Row(
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('cancelar')),
              FlatButton(onPressed: () {}, child: Text('ok')),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      shadowColor: Colors.amber,
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            // height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea'),
          )
        ],
      ),
    );
  }
}
