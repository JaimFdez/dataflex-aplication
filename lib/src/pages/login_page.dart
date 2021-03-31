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
  final _kBodyText = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white);

  _submit() {
    final bool isValid = _formKey.currentState.validate();
    if (isValid) {
      Navigator.pushReplacementNamed(context, 'home');
    }
  }

  String _validateRuc(String ruc) {
    _ruc = ruc;
    if (_ruc.isNotEmpty && _ruc.length == 11) {
      return null;
    }
    return "RUC inválido";
  }

  String _validateUsuario(String usuario) {
    _usuario = usuario;
    if (_usuario.isNotEmpty) {
      return null;
    }
    return "Usuario inválido";
  }

  String _validatePassword(String password) {
    _password = password;
    if (_password.isNotEmpty && _password.length >= 4) {
      return null;
    }
    return "Contraseña inválida";
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _media = MediaQuery.of(context);
    final Size _screenSize = _media.size;
    final EdgeInsets _padding = _media.padding;

    return Scaffold(
      backgroundColor: colorFondo,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: _screenSize.height - _padding.top - _padding.bottom,
              width: _screenSize.width * 0.75,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _logo(),
                    Container(
                      child: Column(
                        children: [
                          _inputRuc(),
                          SizedBox(height: 20),
                          _inputUsuario(),
                          SizedBox(height: 20),
                          _inputPassword(),
                          SizedBox(height: 30),
                          _buttonLogin(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Image(
      image: AssetImage('assets/images/logo.png'),
    );
  }

  Widget _inputRuc() {
    return TextFormField(
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      validator: _validateRuc,
      style: _kBodyText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        border: InputBorder.none,
        hintText: 'Número de Ruc',
        prefixIcon: Container(
          width: 70.0,
          height: 40.0,
          padding: EdgeInsets.all(10.0),
          child: SvgPicture.asset('assets/icons/business-and-trade.svg',
              color: Colors.white),
        ),
        hintStyle: _kBodyText,
      ),
    );
  }

  Widget _inputUsuario() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      validator: _validateUsuario,
      style: _kBodyText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        border: InputBorder.none,
        hintText: 'Usuario',
        prefixIcon: Container(
          width: 70.0,
          height: 40.0,
          padding: EdgeInsets.all(10.0),
          child: SvgPicture.asset('assets/icons/man-user.svg',
              color: Colors.white),
        ),
        hintStyle: _kBodyText,
      ),
    );
  }

  Widget _inputPassword() {
    return TextFormField(
      obscureText: true,
      style: _kBodyText,
      validator: _validatePassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        border: InputBorder.none,
        hintText: 'Contraseña',
        prefixIcon: Container(
          width: 70.0,
          height: 40.0,
          padding: EdgeInsets.all(10.0),
          child: SvgPicture.asset('assets/icons/locked-padlock.svg',
              color: Colors.white),
        ),
        hintStyle: _kBodyText,
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
          // Navigator.pushReplacementNamed(context, 'home');
        },
        style: ElevatedButton.styleFrom(
          primary: secondaryBrand,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          padding: EdgeInsets.symmetric(vertical: 18.0),
          textStyle: TextStyle(
              fontSize: 17.0, fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
      ),
    );
  }
}
