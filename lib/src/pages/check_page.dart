import 'package:flutter/material.dart';

class CheckPage extends StatefulWidget {
  const CheckPage({Key key}) : super(key: key);

  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedContainer(
          width:  1000,
          height: 1000,
          curve: Curves.decelerate,
          duration: Duration(milliseconds: 1000),
          child: Container(
            width: 50,
            height: 50,
            child:  Image(image: AssetImage('assets/images/logo-dataflex.png')),
          ),
        )
      ),
      // body: Center(
      //   child: Container(
      //     width: 200,
      //     height: 200,
      //     child: RaisedButton(onPressed: (){
      //       showDialog(
      //         context:context,
      //         builder: (_)=> Image(image: AssetImage('assets/images/check.gif')), 
      //       );
      //     }) 
      //   ),
          // child: Image(image: AssetImage('assets/images/logo-dataflex.png'))),
      // ),
    );
  }
}
