import 'package:flutter/material.dart';

class OnvoiceListPage extends StatefulWidget {

  @override
  _OnvoiceListPageState createState() => _OnvoiceListPageState();
}


class _OnvoiceListPageState extends State<OnvoiceListPage>{

  final Color _red = Color(0xFFF44336);
  final Color _green = Color(0xFF00C853);
  final Color _yellow = Color(0xFFFFD600);
  List<Pedido> _pedidos = [
    Pedido('CONECTA RETAIL S.A.', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Pendiente'),
    Pedido('ARTROSCOPICTRAUMA S.A.C.', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Pendiente'),
    Pedido('ASERCO EB EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Anulado'),
    Pedido('ASOCIACION COMUNIDAD CRISTIANA EVANGELICA FUEGO DE DIOS DEL PERU', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
    Pedido('BI GRAND CONFECCIONES S.A.C.', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
    Pedido('CONCEPTOS & CONSTRUCCIONES V.G EIRL', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
    Pedido('CORPORACION CARMINA SAC', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
    Pedido('CORPORACION INDUSTRIAL ALPA`C S.A.C.', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
    Pedido('ESTUDIO CONTABLE BUSTAMANTE & VICHARRA SOCIEDAD ANONIMA CERRADA - ESTUDIO CONTABLE BUSTAMANTE & VIC	', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
    Pedido('H & J E HIJOS E.I.R.L	', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
    Pedido('INSUMOS PISQUEROS DEL SUR E.I.R.L.	', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
    Pedido('METEORO RACING SOCIEDAD ANONIMA CERRADA	', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
    Pedido('MINERA SAN FELIPE EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA	', '16/10/2020 11:28:30', 'F001-00000026', '20525426778', '111,215.00', 'Facturado'),
  ];
  /*bool expanded = false;
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
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body:  ListView.builder(
        itemCount: _pedidos.length,
        itemBuilder: (context, index) {
          return _cards(index);
        },
      ),
      floatingActionButton: _fab(),
    );
  }


  Widget _appbar() {
    return AppBar(
        actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){}, splashRadius: 25.0,),
      ],
      title: Text("Pedidos", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
      centerTitle: true,
    );
  }

  Widget _cards(index) {
    return Card(
      elevation: 5.0,
      shadowColor: Colors.black,
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                onTap: (){},
                title: Text(_pedidos[index]._empresa, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w900)),
                trailing: _tag(index),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0),
                    Text('Fecha de pedido: ${_pedidos[index]._fecha}'),
                    Text('Comprobante Nro: ${_pedidos[index]._comprobante}'),
                    Text('Nro. pedido: ${_pedidos[index]._nPedido}'),
                    Text('TOTAL: ${_pedidos[index]._total}'),
                  ],
                ),
              ),
            ],
          ),
    );
  }

  Widget _tag(index){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: _pedidos[index]._estado  == 'Facturado' ? _green : _pedidos[index]._estado == 'Anulado' ? _red: _yellow,
        ),
        child: Text(_pedidos[index]._estado, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14.0)),
    );
  }

  Widget _fab() {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: FloatingActionButton.extended(
          // tooltip: 'Comprar podructos',
          label: const Text('NUEVO PEDIDO', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
          icon: const Icon(Icons.shopping_cart, size: 24),
          onPressed: () => Navigator.pushNamed(context, 'order'),
          ),
    );
  }

}

class Pedido {
    String _empresa;
    String _fecha;
    String _comprobante;
    dynamic _nPedido;
    String _total;
    String _estado;

    Pedido(this._empresa, this._fecha, this._comprobante, this._nPedido, this._total, this._estado);
  }
