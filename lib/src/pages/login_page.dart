import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isRememberMe = false;
  final primaryBrand = Color(0xff1C83CE);
  final primaryText = Color(0xff434343);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 56.0
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                titulo(),
                SizedBox(height: 88.0),
                inputRuc(),
                SizedBox(height: 24.0),
                inputUsuario(),
                SizedBox(height: 24.0),
                inputPassword(),
                SizedBox(height: 24.0),
                forgotPassword(),
                rememberMe(),
                buttonLogin(),
                // signupButton(),
              ],
            ),
        ),
      ),
    );
  }

  Widget titulo() {
    return Container(
        child: Image(
      image: AssetImage('assets/images/logo-dataflex.png'),
    ),
    );
  }

  Widget inputRuc() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(0,2)
          )
        ]
      ),
      height: 64.0,
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: primaryText,
          fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14),
          prefixIcon: Icon(
            Icons.person_outline,
            color: primaryBrand,
          ),
          hintText: 'RUC',
          hintStyle: TextStyle(
            color: Colors.black26,
            fontSize: 16.0
          ),
        ),
      ),
    );
  }

  Widget inputUsuario() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(0,2)
          )
        ]
      ),
      height: 64.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: primaryText,
          fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14),
          prefixIcon: Icon(
            Icons.person_outline,
            color: primaryBrand,
          ),
          hintText: 'Usuario',
          hintStyle: TextStyle(
            color: Colors.black26,
            fontSize: 16.0
          ),
        ),
      ),
    );
  }

  Widget inputPassword() {
    return Container(
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(0,2)
          )
        ]
      ),
      height: 64.0,
      child: TextField(
        obscureText: true,
        style: TextStyle(
          color: primaryText,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: primaryBrand,
          ),
          hintText: 'Contraseña',
          hintStyle: TextStyle(
            color: Colors.black26,
            fontSize: 16.0
          ),
        ),
      ),
    );
  }

  Widget forgotPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot password pressed"), 
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          '¿Olvidó su contraseña?',
          style: TextStyle(
            color: primaryBrand,
            fontSize: 14.0
          ),
        ),
        ),
    );
  }

  Widget rememberMe() {
    return Container(
      height: 20.0,
      child: Row(
        children: [
          Checkbox(
            value: isRememberMe, 
            checkColor: Colors.white,
            activeColor: primaryBrand,
            onChanged: (value) {
              setState(() {
                isRememberMe = value;
              });
            },
          ),
          Text(
            'Recuérdame',
            style: TextStyle(
              color: primaryText,
              // fontWeight: FontWeight.bold,
              fontSize: 16.0
            ),
          )
        ],
      ),
    );
  }

  Widget buttonLogin() {
    return Container(
      padding: EdgeInsets.only(top: 32.0, bottom: 24.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 4.0,
        onPressed: (){},
        color: primaryBrand,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text(
          'Ingresar',
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