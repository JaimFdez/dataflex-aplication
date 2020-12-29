import 'package:flutter/material.dart';

import 'package:dataflex_erp/src/widgets/custom_widgets.dart';

import 'package:flutter/rendering.dart';

class OnvoiceListPage extends StatefulWidget {
  OnvoiceListPage({Key key}) : super(key: key);

  @override
  _OnvoiceListPageState createState() => _OnvoiceListPageState();
}

class _OnvoiceListPageState extends State<OnvoiceListPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body:  ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return _cards();
        },
      ),
      floatingActionButton: _fab(), 
    );
  }

  Widget _appbar() {
    return AppBar(
      title: Text(
        "Pedidos",
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
    );
  }

  Widget _cards() {
    return Card(
      elevation: 2.0,
      child: InkWell(
        onTap: ()=> Navigator.pushNamed(context, 'invoice'),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('CONECTA RETAIL S.A.', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Color(0XFF27AE60)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                    child: Text('Facturado', style: TextStyle(fontSize: 12.0, color: Colors.white, fontWeight: FontWeight.w600)))
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Text("Fecha de pedido ", style: TextStyle(fontSize: 14,),),
                  SizedBox(width: 11.0,),
                  Text(': 16/10/2020 11:28:30'),
                ],
              ),
              Row(
                children: [
                  Text("Comprobante Nro : F001-00000026", style: TextStyle(fontSize: 14,),),
                ],
              ),
              Row(
                children: [
                  Text("Nro. de pedido ", style: TextStyle(fontSize: 14,),),
                  SizedBox(width: 24,),
                  Text(': 00000026')
                ],
              ),
              Row(
                children: [
                  Text("Total ",  style: TextStyle(fontSize: 14,),),
                  SizedBox(width: 92.0,),
                  Text(': S/. 111,215.00')
                ],
              ),
            ],
          ),
          
        ),
      ),
    );
  }

  Widget _fab() {
    return Container(
      margin: EdgeInsets.only(bottom: 24.0),
      child: FloatingActionButton.extended(
          // tooltip: 'Comprar podructos',
          label: const Text('NUEVO PEDIDO', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
          icon: const Icon(Icons.shopping_cart, size: 24),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => CreateOrderPage()));
            // Navigator.push(context, route)
          }),
    );
  }
}