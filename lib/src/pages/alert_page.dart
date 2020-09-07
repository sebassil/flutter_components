import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alertpage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () {
            _mostrarAlert(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessible_forward),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('contenido'),
              FlutterLogo(size: 100),
            ],
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('cancelar')),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('ok')),
          ],
        );
      },
    );
  }
}
