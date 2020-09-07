import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";
  String _password = "";
  String _fecha = "";
  String _seleccionada = "volar";
  List _poderes = ['volar', 'rayos x', 'super fuerza', 'curacion'];

  TextEditingController _ifdc = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre',
          labelText: 'Nombre',
          helperText: 'solo nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
        print(_nombre);
      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Nombre es $_nombre'),
      subtitle: Text('Email: $_email'),
    );
  }

  Widget _crearEmail() {
    return TextField(
      // autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
        print(_email);
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      // autofocus: true,
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: 'clave',
          labelText: 'clave',
          suffixIcon: Icon(Icons.security),
          icon: Icon(Icons.lock)),
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      // autofocus: true,
      controller: _ifdc,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: 'clave',
          labelText: 'clave',
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.perm_contact_calendar)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _ifdc.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionDropdown() {
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30),
        Expanded(
          child: DropdownButton(
            value: _seleccionada,
            items: getOpcionDropdown(),
            onChanged: (opt) {
              print(opt);
              setState(() {
                _seleccionada = opt;
              });
            },
          ),
        )
      ],
    );
  }
}
