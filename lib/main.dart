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
      theme: ThemeData(
        primaryColor: Color(0xff1C83CE),
        fontFamily: "Quicksand",
      ),
      initialRoute: 'login',
      routes: <String, WidgetBuilder>{
        'login' :      (BuildContext context) => LoginPage(),
        'home' :     (BuildContext context) => HomePage(),
        'order' :     (BuildContext context) => CreateOrderPage(),
        'onvoice' :  (BuildContext context) => OnvoiceListPage(),
        'clients' :    (BuildContext context) => ClientsPage(),   
        'invoice' : (BuildContext context) => InvoicePage(),
        'createClient' : (BuildContext context) => CreateClientsPage(),
      },
    );
  }
}