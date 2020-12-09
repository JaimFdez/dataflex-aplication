import 'package:flutter/material.dart';

class CreateClientsPage extends StatefulWidget {
  @override
  _CreateClientsPageState createState() => _CreateClientsPageState();
}

class _CreateClientsPageState extends State<CreateClientsPage> {
  String _opcionSelec = 'RUC';
  List<String> _poderes = ['RUC', 'DNI'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear nuevo cliente'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.save,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        children: [
            _crearDropdown(),
            SizedBox(height: 16.0,),
            _crearTextForm('Ingresar documento identidad'),
            SizedBox(height: 16.0,),
            _crearTextForm('Nombre o razón social'),
            SizedBox(height: 16.0,),
            _crearTextForm('Nombre comercial'),
            SizedBox(height: 16.0,),
            _crearTextForm('Apellido paterno'),
            SizedBox(height: 16.0,),
            _crearTextForm('Apellido materno'),
            SizedBox(height: 16.0,),
            _crearTextForm('Nombres'),
            SizedBox(height: 16.0,),
            _crearTextForm('Dirección'),
            SizedBox(height: 16.0,),
            _crearTextForm('Referencia'),
            

        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1),
        borderRadius: BorderRadius.circular(16.0)
      ),
      child: DropdownButton(
        icon: Icon(Icons.keyboard_arrow_down),
        iconSize: 24,
        isExpanded: true,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16.0,
        ),
            value: _opcionSelec,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _opcionSelec = opt;
              });
            },
          ),
    );
  }

  Widget _crearTextForm(String text) {
    return TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0)
            ),
            labelText: text,  
            ),
        );
  }

}
