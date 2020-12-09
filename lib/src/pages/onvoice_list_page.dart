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
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 0.0, left: 7.0, right: 7.0, top: 8.0),
        child: _cards(),
      ),
      floatingActionButton: _fab(), 
    );
  }

  Widget _appbar() {
    return AppBar(
      title: Text(
        "Lista de Factura",
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }

  Widget _cards() {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => InvoicePage())),
          child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CONECTA RETAIL S.A", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),),
                            Text("Fecha de pedido:", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                            Text("Pedido No:", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                            Text("Comproban:", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                            Text("Total:",  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text( "", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            Text( "30/06/20", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            Text( "62898", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            Text( "1 ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            Text( "\$400 ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _fab() {
    return FloatingActionButton(
        tooltip: 'Comprar podructos',
        child: Icon(Icons.add, size: 35),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => CreateOrderPage()));
          // Navigator.push(context, route)
        });
  }
}