import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      // body: ListView(children: _crearitems()),
      body: ListView(children: _crearcorta()),
    );
  }

  List<Widget> _crearitems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.red,
        ));
    }

    return lista;
  }

  List<Widget> _crearcorta() {
    var widgets = opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Hola'),
            leading: Icon(Icons.access_time),
            trailing: Icon(Icons.keyboard_arrow_down),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();

    return widgets;
  }
}
