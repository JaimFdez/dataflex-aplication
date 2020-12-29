import 'package:dataflex_erp/src/pages/new_login.dart';
import 'package:flutter/material.dart';
import 'package:dataflex_erp/src/widgets/custom_widgets.dart';

import 'src/bloc/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dataflex ERP',
      theme: ThemeData(
        primaryColor: Color(0xff1C83CE),
        accentColor: Color(0xff1C83CE),
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
        'listArticles' : (BuildContext context) => ListArticlesPage(),
        'newLogin' : (BuildContext context) => NewLogin(),
      },
    ),
    );
    
    
    
    
    
    
  }
}