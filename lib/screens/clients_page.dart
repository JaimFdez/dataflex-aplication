import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClientsPage extends StatelessWidget {

  final List<Cliente> _clientes = [
    Cliente('CONECTA RETAIL S.A.', '20525426778'),
    Cliente('ARTROSCOPICTRAUMA S.A.C.','20538856674'),
    Cliente('ASERCO EB EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA','20549500553'),
    Cliente('ASOCIACION COMUNIDAD CRISTIANA EVANGELICA FUEGO DE DIOS DEL PERU','20551597939'),
    Cliente('BI GRAND CONFECCIONES S.A.C.','20553856451'),
    Cliente('CONCEPTOS & CONSTRUCCIONES V.G EIRL','20525426778'),
    Cliente('CORPORACION CARMINA SAC','20601155185'),
    Cliente('CORPORACION INDUSTRIAL ALPA`C S.A.C.','20555629541'),
    Cliente('ESTUDIO CONTABLE BUSTAMANTE & VICHARRA SOCIEDAD ANONIMA CERRADA - ESTUDIO CONTABLE BUSTAMANTE & VIC	','20601587417'),
    Cliente('H & J E HIJOS E.I.R.L	','20518639928'),
    Cliente('INSUMOS PISQUEROS DEL SUR E.I.R.L.	','20558629585'),
    Cliente('METEORO RACING SOCIEDAD ANONIMA CERRADA	','20548971111'),
    Cliente('MINERA SAN FELIPE EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA	','20364368594'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}, splashRadius: 25.0)
        ],
      ),
      body: ListView.builder(
        itemCount: _clientes.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
            child: _cardClients(context, index, _clientes),
          );
        },
        ), 

        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, 'createClient'),
          child: SvgPicture.asset('assets/icons/bxs-user-plus.svg', color: Colors.white),
          ),
      );
  }

  Widget _cardClients(context, index, _clientes) {
    return Card(
      elevation: 5.0,
      /*shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(8.0)
        ),*/
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            onTap: (){},
            leading: CircleAvatar(
              child: Text(_clientes[index]._nombre.substring(0,1), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
            ),
            title: Text(_clientes[index]._nombre , style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w900),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0),
                Text('RUC: ${_clientes[index]._documento}', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  class Cliente {
    String _nombre;
    String _documento;

    Cliente(this._nombre, this._documento);
  }