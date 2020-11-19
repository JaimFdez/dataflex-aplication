import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            inputRuc(),
            SizedBox(height: 16.0),
            inputCodigoVendedor(),
            SizedBox(height: 16.0),
            inputContrasena(),
            buttonRegistro(),
          ],
        ),
      ),
    );
  }


  Widget inputRuc() {
    return TextFormField(
      keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
            hintText: 'Ingrese el RUC de la empresa',
              labelText: 'RUC',
        ),
    );
  }

  Widget inputCodigoVendedor() {
    return TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
            hintText: 'Ingrese su código de vendedor',
              labelText: 'Código de vendedor',
        ),
    );
  }

  Widget inputContrasena() {
    return TextFormField(
      obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
            hintText: 'Ingrese una contraseña',
              labelText: 'Contraseña',
        ),
    );
  }

  Widget buttonRegistro() {
    return Container(
      padding: EdgeInsets.only(top: 32.0, bottom: 24.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 4.0,
        onPressed: (){},
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text(
          'Registrarme',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),
          ),
        padding: EdgeInsets.all(18.0),
      ),
    );
  }

}