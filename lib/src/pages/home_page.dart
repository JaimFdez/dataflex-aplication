import 'package:dataflex_erp/src/pages/orders_list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Comprar"),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => OrdersPage()));
          }
        
        ),
      ),

      drawer: Drawer(
        child: Center(
          child: Text('Hola')

        ),
      ),
    );
  }

}