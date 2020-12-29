import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({Key key}) : super(key: key);

  @override
  _InvoicePageState createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detalle pedido',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.0
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.picture_as_pdf, color: Colors.white,),
            onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.share, color: Colors.white), 
              onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.white),
                onPressed: (){},
                )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _onvice()
        ],
      ),
    );
  }


 Widget _onvice() {
   return Column(
           children: [
             _head(),
              Divider(color: Colors.black54, thickness: 2.5),
             _itemsList(),
             _itemsList(),
             _itemsList(),
             _itemsList(),
             _itemsList(),
             _itemsList(),
             _itemsList(),
             _itemsList(),
             _itemsList(),
             _itemsList(),
             _itemsList(),
             _itemsList(),
            SizedBox(height: 16.0,),
             _cuentaTotal(),
           ],
         );
 }

  TextStyle style2 = new TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  Widget _head() {
    return Container(
      padding: EdgeInsets.only(top:0.0, bottom: 16.0),
      child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Cliente:"),
                  SizedBox(width: 10.0,),
                  Text('CONECTA RETAIL S.A.', style: style2,)
                ],
              ),
              SizedBox(height: 4.0,),
              Row(
                children: [
                  Text("Fecha de entrega:"),
                  SizedBox(width: 16.0),
                  Text('16/10/2020')
                ],
              ),
              Row(
                children: [
                  Text("Fecha de emisión:"),
                  SizedBox(width: 16.0),
                  Text('16/10/2020')
                ],
              ),
              Row(
                children: [
                  Text("Comprobante de venta:"),
                  SizedBox(width: 16.0),
                  Text('F001-00000026')

                ],
              ), 
              Row(
                children: [
                  Text("Nro. de pedido:"),
                  SizedBox(width: 16.0,),
                  Text('00000026')
                ],
              ),
              Row(
                children: [
                  Text("Condición de pago:"),
                  SizedBox(width: 16.0),
                  Text('Contado')
                ],
              ),
              Row(
                children: [
                  Text("Forma de pago:"),
                  SizedBox(width: 16.0),
                  Text('Efectivo')
                ],
              ),
            ],
          ),
    );

  }

  Widget _itemsList(){

    return Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0)
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('HP Ink tank415', style: style2,),
                  SizedBox(height: 4.0,),
                  Text('Cantidad: 650'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Precio: S/. 145.00'),
                  SizedBox(height: 4.0,),
                Text('Total: S/. 94,250.00', style: style2)
                ],
              )
            ],
          ),
        ),
      );
  }

  Widget _cuentaTotal() {
    return Card(
      color: Color(0xfff2f2f2),
      elevation: 1.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Operaciones gratuitas:', style: style2),
                Text('Exonerado:', style: style2),
                Text('Inafecto:', style: style2),
                Text('Afecto:', style: style2),
                Text('I.G.V. 18%:', style: style2),
                Text('Total:', style: style2),
                Text('Percepción:', style: style2),
                Text('TOTAL A PAGAR:', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('0.00', style: style2),
                Text('0.00', style: style2),
                Text('0.00', style: style2),
                Text('94,250.00', style: style2),
                Text('16,965.00', style: style2),
                Text('111,215.00', style: style2),
                Text('0.00', style: style2),
                Text('S/. 111,215.00', style: style2),
              ],
            ),
          ],
        ),
      ),
    );
  }

}