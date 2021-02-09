import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  final _colorBotonesRedondeados = Color(0XFFF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventas', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Christian'), 
              accountEmail: Text('christian6@gmail.com'),
              currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('C', style: TextStyle(fontSize: 40.0)),  
              ),
              ),
            ListTile(
              title: Text('Ventas', style: TextStyle(fontWeight: FontWeight.bold),),
              leading: Icon(Icons.camera_alt),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              title: Text('Salir', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              leading: Icon(Icons.exit_to_app),
              onTap: (){},
            )
          ],
        ),
      ),
      body: _botonesRedondeados(context),
    );
  }

  Widget _botonesRedondeados(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(context, 'Pedidos', 'assets/icons/notas.svg', 'onvoice'),
            _crearBotonRedondeado(context, 'Clientes', 'assets/icons/clientela.svg', 'clients'),
          ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(BuildContext context, String texto,String icono, String route) {
    final _estiloTextoBoton = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
    return Container(
      margin: EdgeInsets.all(16.0),
      child: RawMaterialButton(
        fillColor: _colorBotonesRedondeados,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 16.0),
          child: Column(
            children: [
              SvgPicture.asset(icono, height: 60),
              SizedBox(height: 16.0),
              Text(texto, style: _estiloTextoBoton)
            ],
          ),
        ),
        onPressed: () => Navigator.pushNamed(context, route),
      ),
    );
  }

}