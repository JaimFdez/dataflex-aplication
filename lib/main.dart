import 'package:flutter/material.dart';
import 'package:dataflex_erp/src/widgets/custom_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dataflex ERP',
      theme: ThemeData(        primarySwatch: Colors.blue, fontFamily: "Quicksand"
      ),
<<<<<<< HEAD
      initialRoute: 'onvoice',
      routes: {
        'login'   :    ( BuildContext context ) => LoginPage(),
        'home'  :   (BuildContext context ) => HomePage(),
        'order'  :   (BuildContext context ) => OrdersPage(),
        'onvoice'  :   (BuildContext context ) => OnvoiceListPage(),
        // 'com' : (BuildContext context) => CheckPage(),
=======
      initialRoute: 'home',
      routes: {
        'login'     :    ( BuildContext context ) => LoginPage(),
        'home'    :    ( BuildContext context ) => HomePage(),
        'registro' :    ( BuildContext context ) => RegistroPage(),
>>>>>>> 77286dc28d3b6ed605ec7f83d730f4f1614b2cc0
      },
    );
  }
}