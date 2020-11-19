import 'package:flutter/material.dart';
import 'package:dataflex_erp/src/widgets/custom_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dataflex ERP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Quicksand"
      ),
      initialRoute: 'home',
      routes: {
        'login'     :    ( BuildContext context ) => LoginPage(),
        'home'    :    ( BuildContext context ) => HomePage(),
        'registro' :    ( BuildContext context ) => RegistroPage(),
      },
    );
  }
}