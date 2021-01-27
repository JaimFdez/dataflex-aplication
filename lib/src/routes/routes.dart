import 'package:flutter/material.dart';
import 'package:dataflex_erp/src/pages/clients_page.dart';
import 'package:dataflex_erp/src/pages/create_clients_page.dart';
import 'package:dataflex_erp/src/pages/create_order_page.dart';
import 'package:dataflex_erp/src/pages/home_page.dart';
import 'package:dataflex_erp/src/pages/invoice_page.dart';
import 'package:dataflex_erp/src/pages/list_articles_page.dart';
import 'package:dataflex_erp/src/pages/login_page.dart';
import 'package:dataflex_erp/src/pages/onvoice_list_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder>{
        'login' :      (BuildContext context) => LoginPage(),
        'home' :     (BuildContext context) => HomePage(),
        'order' :     (BuildContext context) => CreateOrderPage(),
        'onvoice' :  (BuildContext context) => OnvoiceListPage(),
        'clients' :    (BuildContext context) => ClientsPage(),   
        'invoice' : (BuildContext context) => InvoicePage(),
        'createClient' : (BuildContext context) => CreateClientsPage(),
        'listArticles' : (BuildContext context) => ListArticlesPage(),
      };

}