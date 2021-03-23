import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String _ruc = '', _usuario = '', _password = '';
  final primaryBrand = Color(0XFF1C83CE);
  final secondaryBrand = Color(0XFF88CA44);
  final primaryText = Color(0XFF434343);
  final colorFondo = Color(0XFF0089D1);
  final _kBodyText = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white);

  _submit() {
    if (_ruc.isEmpty) {
      print('_ruc.isEmpty');
    } else if (_usuario.isEmpty) {
      print('_usuario.isEmpty');
    }
  }

  String _validateRuc() {
    if (_ruc.isNotEmpty && _ruc.length == 11) {
      return null;
    }
    return "Invalid ruc";
  }

  String _validateUsuario() {
    if (_usuario.isNotEmpty) {
      return null;
    }
    return "Invalid usuario";
  }

  String _validatePassword() {
    if (_password.isNotEmpty && _password.length >= 4) {
      return null;
    }
    return "Invalid password";
  }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorFondo,
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.red,
            width: _screenSize.width * 0.75,
            height: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _logo(),
                  _inputRuc(),
                  SizedBox(height: 20.0),
                  _inputUsuario(),
                  SizedBox(height: 20.0),
                  _inputPassword(),
                  SizedBox(height: 32.0),
                  _buttonLogin()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /* Widget _logo() {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.height * 0.53,
      child: Image(
        image: AssetImage('assets/images/logo.png'),
      ),
    );
  } */

  Widget _logo(){
    return Image(
      image: AssetImage('assets/images/logo.png'),
    );
  }

  Widget _inputRuc() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        onChanged: (String text) {
          _ruc = text;
        },
        style: _kBodyText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          border: InputBorder.none,
          hintText: 'Número de Ruc',
          prefixIcon: Container(
            width: 70.0,
            height: 40.0,
            padding: EdgeInsets.all(10.0),
            child: SvgPicture.asset('assets/icons/ruc.svg', color: Colors.white),
          ),
          hintStyle: _kBodyText,
        ),
      ),
    );
  }

  Widget _inputUsuario() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        onChanged: (String text) {
          _usuario = text;
        },
        style: _kBodyText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          border: InputBorder.none,
          hintText: 'Usuario',
          prefixIcon: Container(
            width: 70.0,
            height: 40.0,
            padding: EdgeInsets.all(10.0),
            child: SvgPicture.asset('assets/icons/user.svg', color: Colors.white),
          ),
          hintStyle: _kBodyText,
        ),
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        obscureText: true,
        style: _kBodyText,
        onChanged: (String text) {
          _password = text;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          border: InputBorder.none,
          hintText: 'Contraseña',
          prefixIcon: Container(
            width: 70.0,
            height: 40.0,
            padding: EdgeInsets.all(10.0),
            child: SvgPicture.asset('assets/icons/padlock.svg', color: Colors.white),
          ),
          hintStyle: _kBodyText,
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('INGRESAR'),
        onPressed: () {
          _submit();
          FocusScope.of(context).unfocus();
          Navigator.pushReplacementNamed(context, 'home');
        },
        style: ElevatedButton.styleFrom(
          primary: secondaryBrand,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          padding: EdgeInsets.symmetric(vertical: 18.0),
          textStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
      ),
    );
  }
}
