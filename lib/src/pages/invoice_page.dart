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
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(title: Text("Factura" ,style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),), centerTitle: true, ),
      appBar: _appbar(),
      body: _container(),
    );
  }

  Widget _appbar(){

    return AppBar(
      title: Text("Factura" ,style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold), ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.check_circle_outline),
          onPressed: (){
            
            AlertDialog(
              title: Text("data"),
              content: Text("data"),
              actions: [
                FlatButton(onPressed: (){}, child: Text("data"))
              ],
            );
            setState(() {
              
            });
          }
        )
      ],
    
    );

  }

 Widget _container() {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: _onvice(),
   );
 }

 Widget _onvice() {
   return Container(
     width: double.infinity,
     height: double.infinity,
     color: Colors.white,
     child: Padding(
       padding: EdgeInsets.all(7),
       child: SingleChildScrollView(
         child: Column(
           children: [
             _logo(),
             _head(),
              Divider(color: Colors.blue[300], thickness: 2.5),
             _itemsList(),
              Divider(thickness: 1.5, indent: 115.0,),
             _iva(),
              Divider(thickness: 1.5, indent: 115.0,),
             _subTotal(),
              Divider(thickness: 1.5, indent: 115.0,),
             _total(),
           ],
         ),
       ),
     ),
   );
 }

  Widget _logo() {
    return Container(
      height: 90,
      // color: Colors.green,
      width: 300,
      child: Image.asset("assets/images/logo-dataflex.png"),
    );
  }

  TextStyle style1 = new TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w900,
    color: Colors.lightBlue[600]
  );
  TextStyle style2 = new TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  Widget _head() {
    return Container(
      width: double.infinity,
      // color: Colors.lightGreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Facturado a:", style: style1,),
              SizedBox(height: 10.0,),
              Text("Jaime", style: style2,),
              Text("Peru", style: style2,),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Factura No.", style: style1),
              Text("No. 168418", style: style2),
              SizedBox(height: 10.0,),
              Text("Fecha de Emisión", style: style1,),
              Text("19/11/20", style: style2,),
              SizedBox(height: 10.0,),
              Text("Fecha de Vencimiento", style: style1,),
              Text("15/01/21", style: style2,),
            ],
          ),
        ],
      ),
    );

  }

  Widget _itemsList(){

    return Container(
      // color: Colors.orange,
      height: MediaQuery.of(context).size.height - 380.97,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Nombre del Producto", style: style1,),
              Text("Precio Total", style: style1,),
            ],
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Sopa Maruchan Inst.", style: style2,),
                  subtitle: Row(children:[Text("P/U: \$0.50 - "), Text("Cant: 4")]),
                  trailing: Text("\$2.00", style: style2,),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _iva(){

    return Container(
      // color: Colors.blue,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Operaciones gratuitas: "),
              Text("Exonerada: "),
              Text("Inafecto: "),
              Text("Afecto: "),
              Text("I.G.V 18%: "),
            ],
          ),
          Column(
            children: [
              Text("                              ")
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("\$20", style: style2,),
              Text("\$20", style: style2,),
              Text("\$20", style: style2,),
              Text("\$20", style: style2,),
              Text("\$20", style: style2,),
            ],
          ),
        ],
      ),
    );
  }


  Widget _subTotal(){

    return Container(
      // color: Colors.blue,
      width: double.infinity,
      child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Percepcion: "),
              Text("Total: "),
              Text("Monto adeudado: "),
              Text("                                        "),
            ],
          ),
          Column(
            children: [
              Text("                              ")
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("\$20", style: style2,),
              Text("\$20", style: style2,),
              Text("\$20", style: style2,),
              Text(""),
            ],
          ),
        ],
      ),
    );
  }


  Widget _total(){

    return Container(
      // color: Colors.blue,
      width: double.infinity,
      child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Total a Pagar: "),
              Text("                                        "),
            ],
          ),
          Column(
            children: [
              Text("                              ")
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("\$20", style: style2,),
              Text(""),
            ],
          ),
        ],
      ),
    );
  }
}