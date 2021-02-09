import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final primaryBrand = Color(0XFF1C83CE);
  final secondaryBrand = Color(0XFF88CA44);
  final primaryText = Color(0XFF434343);
  final _colorFondo = Color(0XFF0089D1);
  final kBodyText = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: _colorFondo,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: _screenSize.width * 0.75,
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Column(
                    children: [
                      Container(
                        child: _titulo(),
                      ),
                      _inputRuc(),
                      SizedBox(height: 16.0),
                      _inputUsuario(),
                      SizedBox(height: 16.0),
                      _inputPassword(),
                      SizedBox(height: 48.0),
                      _buttonLogin(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _titulo() {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.height * 0.53,
      child: Image(
        image: AssetImage('assets/images/logo.png'),
      ),
    );
  }

  Widget _inputRuc() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        style: kBodyText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          border: InputBorder.none,
          hintText: 'Empresa',
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.view_week_rounded, color: Colors.white, size: 30.0),
          ),
          hintStyle: kBodyText,
        ),
      ),
    );
  }

  Widget _inputUsuario() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        style: kBodyText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          border: InputBorder.none,
          hintText: 'Usuario',
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.person_rounded, color: Colors.white, size: 30.0),
          ),
          hintStyle: kBodyText,
        ),
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextField(
        obscureText: true,
        style: kBodyText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          border: InputBorder.none,
          hintText: 'Contraseña',
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.lock_rounded, color: Colors.white, size: 30.0),
          ),
          hintStyle: kBodyText,
        ),
      ),
    );
  }

  /* Widget forgotPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot password pressed"), 
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          '¿Olvidó su contraseña?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0
          ),
        ),
        ),
    );
  } */

  /* Widget rememberMe() {
    return Container(
      height: 20.0,
      child: Row(
        children: [
          Checkbox(
            value: isRememberMe, 
            checkColor: Colors.blue,
            activeColor: Colors.white,
            autofocus: true,
            onChanged: (value) {
              setState(() {
                isRememberMe = value;
              });
            },
          ),
          Text(
            'Recuérdame',
            style: TextStyle(
              color: Colors.white,
              // fontWeight: FontWeight.bold,
              fontSize: 16.0
            ),
          )
        ],
      ),
    );
  } */

  Widget _buttonLogin() {
    return FlatButton(
      color: secondaryBrand,
      child: Text(
        'INGRESAR',
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      textColor: Colors.white,
      // highlightColor: Colors.amber,
      splashColor: Colors.amber,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      minWidth: double.infinity,
      disabledTextColor: Colors.black,
      disabledColor: Colors.blueGrey[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      onPressed: () => Navigator.pushReplacementNamed(context, 'home'),
    );
  }

//   Widget signupButton() {
//     return GestureDetector(
//       onTap: () => print('Sign Up pressed'),
//       child: RichText(
//         text: TextSpan(
//           children: [
//             TextSpan(
//               text: '¿No tiene cuenta? ',
//               style: TextStyle(
//                 color: primaryText,
//                 fontSize: 16.0,
//                 // fontWeight: FontWeight.w500
//               )
//             ),
//             TextSpan(
//               text: 'Regístrese',
//               style: TextStyle(
//                 color: primaryBrand,
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold
//               )
//             )
//           ]
//         ),
//       )
//     );
//   }
}
