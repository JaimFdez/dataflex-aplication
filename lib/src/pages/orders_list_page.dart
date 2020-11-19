import 'package:flutter/material.dart';
import 'dart:math';

import 'package:dataflex_erp/src/widgets/custom_widgets.dart';

import 'package:flutter/rendering.dart';

class OrdersPage extends StatefulWidget {
  OrdersPage({Key key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 0.0, left: 7.0, right: 7.0, top: 0.0),
        child: Stack(
          children:[
            _cards(),
            _navBar() 
          ]
        ),
      ),
      floatingActionButton: _fab(), 
    );
  }

  Widget _appbar() {
    return AppBar(
      // actions: [
      //   IconButton(icon: Icon(Icons.check, size: 27,), onPressed:() {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => OrdersPage()));;

      //   })
      // ],
      title: Text(
        "Mi Lista de Productos",
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }

  Widget _cards() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key("value"),
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.red,
          ),
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
                            Text(
                              "Coca Cola 350ml",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Codigo: 62898",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              "Precio \$0.50",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              "Iva: \$0.05",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.remove_circle,
                                size: 30,
                                color: Colors.lightGreen,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              " 1 ",
                              style: TextStyle(fontSize: 15),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                size: 30,
                                color: Colors.lightGreen,
                              ),
                              onPressed: () {},
                            ),
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
        tooltip: 'Añadir nuevo Producto',
        child: Icon(Icons.add, size: 35),
        onPressed: () {
          showSearch(
            context: context,
            delegate: SearchBar(),
          );
        });
  }

  Widget _navBar(){

    return Positioned(

      left: 30,
      right: 80,
      top: 675,
             
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),

        child: Container(
          height: 50,
          color: Colors.blue[400],
          child: Padding(
            padding: EdgeInsets.only(left: 15.0, right:  13.0, top:  0.0, bottom:  0.0,),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Items: 20", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                Text("Total \$50", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                Transform.rotate(
                  angle: pi/2,
                  child: IconButton(
                    tooltip: "Pagar los productos",
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => InvoicePage()));
                    },
                    icon: Icon(Icons.navigation, color: Colors.white, size: 25,),  
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}