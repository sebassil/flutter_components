import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: 'Tamaño de la imagen',
        divisions: 20,
        value: _valorSlider,
        min: 10,
        max: 400,
        onChanged: (valor) {
          if (_bloquearCheck) {
          } else {
            setState(() {
              _valorSlider = valor;
            });
          }
        });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://www.lego.com/cdn/cs/set/assets/bltcd635a3454dc7194/DC_-_Character_Detail_-_Gallery-Tall-Large_-_Batman.jpg?fit=crop&format=jpg&quality=80&width=1600&height=700&dpr=1'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor) {
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }
}
