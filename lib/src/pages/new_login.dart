import 'package:flutter/material.dart';

class NewLogin extends StatefulWidget {
  NewLogin({Key key}) : super(key: key);

  @override
  _NewLoginState createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity, 
          height: double.infinity,
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 300, minWidth: 200
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    
                  ),
                  decoration: InputDecoration(
                    hintText: 'Ruc'
                  ),
                ),
              )
            ],
          ),
        )
        ),
    );
  }
}