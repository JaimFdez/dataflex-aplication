import 'package:flutter/material.dart';

class OrderDisplayWidget extends StatefulWidget {

  final img;
  OrderDisplayWidget(this.img);

  @override
  _OrderDisplayWidgetState createState() => _OrderDisplayWidgetState();
}

class _OrderDisplayWidgetState extends State<OrderDisplayWidget> {

  String _fecha = '';

  String _monedaSelec = 'Soles';
  String _condicionSelec = 'Efectivo';
  String _medioSelec = 'Contado';
  List<String> _tipoMoneda = ['Soles', 'Dolares'];
  List<String> _condicionPago = ['Efectivo', 'Cheque'];
  List<String> _medioPago = ['Contado', 'plazos'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  Widget _buildClientTextFiekd(String tipo) {
    return TextField(
      decoration: InputDecoration(
        labelText: tipo,
        suffixIcon: Container(
          
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: (){}),
        )
        /*border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),*/
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      children: [
        _buildClientTextFiekd('Cliente:'),
        SizedBox(height: 16.0,),
        _crearFecha( context ),
        SizedBox(height: 16.0,),
        _monedaDropdown(),
        SizedBox(height: 16.0,),
        _condicionPagoDropdown(),
        SizedBox(height: 16.0,),
        _medioPagoDropdown()
      ],
    );
  }

  Widget _crearFecha( BuildContext context ) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        hintText: 'Fecha de entrega',
        labelText: 'Fecha de entrega',
        suffixIcon: Icon(Icons.calendar_today)
      ),
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context );
      },
    );
  }

  _selectDate(BuildContext context) async {

    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2021),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'ES')
    );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }

  }

  List<DropdownMenuItem<String>> getMonedaDropdown() {
    List<DropdownMenuItem<String>> listaMoneda = new List();
    _tipoMoneda.forEach((mon) {
      listaMoneda.add(DropdownMenuItem(
        child: Text(mon),
        value: mon,
      ));
    });
    return listaMoneda;
  } 

  Widget _monedaDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Moneda'),
        Row(
          children: [
            Icon(Icons.monetization_on),
            SizedBox(width: 24.0,),
            DropdownButton(
              value: _monedaSelec,
              items: getMonedaDropdown(),
              onChanged: (opt) {
                setState(() {
                  _monedaSelec = opt;
                });
          }
          ),
          ],
        )
      ],
    );
  }

  List<DropdownMenuItem<String>> getCondicionPagoDropdown() {
    List<DropdownMenuItem<String>> listaCondicion = new List();
    _condicionPago.forEach((pago) {
      listaCondicion.add(DropdownMenuItem(
        child: Text(pago),
        value: pago,
      ));
    });
    return listaCondicion;
  } 

  Widget _condicionPagoDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Condición de pago'),
        Row(
          children: [
            Icon(Icons.money),
            SizedBox(width: 24.0,),
            DropdownButton(
              value: _condicionSelec,
              items: getCondicionPagoDropdown(),
              onChanged: (opt) {
                setState(() {
                  _condicionSelec = opt;
                });
          }
          ),
          ],
        )
      ],
    );
  }

  List<DropdownMenuItem<String>> getMedioPagoDropdown() {
    List<DropdownMenuItem<String>> listaMedio = new List();
    _medioPago.forEach((medio) {
      listaMedio.add(DropdownMenuItem(
        child: Text(medio),
        value: medio,
      ));
    });
    return listaMedio;
  } 

  Widget _medioPagoDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Medio de pago'),
        Row(
          children: [
            Icon(Icons.archive),
            SizedBox(width: 24.0,),
            DropdownButton(
              value: _medioSelec,
              items: getMedioPagoDropdown(),
              onChanged: (opt) {
                setState(() {
                  _medioSelec = opt;
                });
          }
          ),
          ],
        )
      ],
    );
  }
}