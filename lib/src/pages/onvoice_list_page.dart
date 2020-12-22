import 'package:dataflex_erp/src/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';

class OnvoiceListPage extends StatefulWidget {

  @override
  _OnvoiceListPageState createState() => _OnvoiceListPageState();
}


class _OnvoiceListPageState extends State<OnvoiceListPage>{

  final Color red = Color(0xFFF44336);
  final Color green = Color(0xFF00C853);
  final Color yellow = Color(0xFFFFD600);
  bool expanded = false;
  final scrollController = ScrollController();

  void _onScrollDirection(){
    if(scrollController.position.userScrollDirection == ScrollDirection.forward && expanded){
      expanded = false;
      setState(() {});
    }
    else if(scrollController.position.userScrollDirection == ScrollDirection.reverse && !expanded){
      expanded = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 0.0, left: 7.0, right: 7.0, top: 8.0),
        child: _cards(),
      ),
      floatingActionButton: ButtonFAB(
        expanded: expanded,
        onTap: () {
          // expanded = !expanded;
          // setState(() {});
        },
      ), 
    );
  }


  Widget _appbar() {
    return AppBar(
        // leading: Container(),
        actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){}, splashRadius: 20.0,),
      ],
      title: Text(
        'Pedidos',
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
      ),
      // centerTitle: true,
    );
  }

  Widget _cards() {
    return NotificationListener<ScrollNotification>(
      onNotification: (details) {
        _onScrollDirection();
        return true;
      },
      child: ListView(
        controller: scrollController,
        children: [
          _card('Anulado', red),
          _card('Pendiente', yellow),
          _card('Facturado', green),
          _card('Anulado', red),
          _card('Pendiente', yellow),
          _card('Facturado', green),
          _card('Anulado', red),
          _card('Pendiente', yellow),
          _card('Facturado', green),
          _card('Anulado', red),
          _card('Pendiente', yellow),
          _card('Facturado', green),
          _card('Anulado', red),
          _card('Pendiente', yellow),
          _card('Facturado', green),
          _card('Anulado', red),
          _card('Pendiente', yellow),
          _card('Facturado', green),
          _card('Anulado', red),
          _card('Pendiente', yellow),
          _card('Facturado', green),
          _card('Anulado', red),
          _card('Pendiente', yellow),
          _card('Facturado', green),
        ],
      ),
    );
  }

  Widget _card(String text, Color color){
    return Card(
          elevation: 5,
          shadowColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _text1('CONECTA RETAIL S.A'),
                    _tag(text, color),
                  ],
                ),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.0,),
                        _text2('Comprobante Nro  :'),
                        SizedBox(height: 5.0,),
                        _text2('Nro de pedido        :'),
                        SizedBox(height: 5.0,),
                        _text2('Fecha pedido         :'),
                        SizedBox(height: 5.0,),
                        _text2('Total                        :'),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.0,),
                        _text2('16/10/2020 11:28:30'),
                        SizedBox(height: 5.0,),
                        _text2('F001-0000002626'),
                        SizedBox(height: 5.0,),
                        _text2('00000026'),
                        SizedBox(height: 5.0,),
                        _text2('S/. 111,215.0'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ); 
  }

  Widget _fab() {
    return Container(
      width: 173.0,
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          children: [
            Icon(Icons.shopping_cart, color: Colors.white),
            SizedBox(width: 10.0,),
            Text('Nuevo Pedido', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),)
          ],
        ),
      ),
      
      decoration: BoxDecoration(
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(3, 3),
            color: Colors.black45
          )
        ],
        borderRadius: BorderRadius.circular(25)
      ),
    );
  }

  Widget _tag(String text, Color color){
    return Container(
      width: 75,
      // height: 20,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Center(child: _text3(text)),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }

  Widget _text1(String text){

    return Text( 
      text, 
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700
      )
    );
  }

  Widget _text2(String text){
    
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400
      ),
    );
  }

  Widget _text3(String text){
    
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.w700
      ),
    );
  }

}

/*

Widget _cards() {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          shadowColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _text1('CONECTA RETAIL S.A'),
                    _tag('Pendiente', Colors.red),
                  ],
                ),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text2('Comprobante Nro:'),
                        _text2('Nro de pedido:'),
                        _text2('Fecha pedido:'),
                        _text2('Total:'),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _text2('16/10/2020 11:28:30'),
                        _text2('F001-0000002626'),
                        _text2('00000026'),
                        _text2('S/. 111,215.0'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

*/