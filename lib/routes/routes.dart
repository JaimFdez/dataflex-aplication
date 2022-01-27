import 'package:flutter/material.dart';
import 'package:dataflex_erp/screens/clients_page.dart';
import 'package:dataflex_erp/screens/create_clients_page.dart';
import 'package:dataflex_erp/screens/create_order_page.dart';
import 'package:dataflex_erp/screens/home_page.dart';
import 'package:dataflex_erp/screens/invoice_page.dart';
import 'package:dataflex_erp/screens/list_articles_page.dart';
import 'package:dataflex_erp/screens/login_screen.dart';
import 'package:dataflex_erp/screens/onvoice_list_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder>{
        'login'         : (BuildContext context) => LoginScreen(),
        'home'          : (BuildContext context) => HomePage(),
        'order'         : (BuildContext context) => CreateOrderPage(),
        'onvoice'       : (BuildContext context) => OnvoiceListPage(),
        'clients'       : (BuildContext context) => ClientsPage(),   
        'invoice'       : (BuildContext context) => InvoicePage(),
        'createClient'  : (BuildContext context) => CreateClientsPage(),
        'listArticles'  : (BuildContext context) => ListArticlesPage(),
  };

}