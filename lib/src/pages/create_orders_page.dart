import 'package:flutter/material.dart';

class CreateOrdersPage extends StatefulWidget {
  CreateOrdersPage({Key key}) : super(key: key);

  @override
  _CreateOrdersPageState createState() => _CreateOrdersPageState();
}

class _CreateOrdersPageState extends State<CreateOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _container(),
      ),
    );
  }

  Widget _container() {
    return Column(
      children: [
        _appbar(),
        _body(),

      ],
    );
  }

  Widget _appbar() {
    return Row(
      children: [

        IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
        Container( 
          width: MediaQuery.of(context).size.width / 1.15,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              hintText: "Ingresa el nombre/codigo del producto"
            ),
          ),
        ),
      ],
    );
  }

  Widget _body() {

    final lst = [
      
      ListTile(
        
        trailing: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
        title: Text("Hola que tal"),
        subtitle: Text("Hola que tal pero por 2 prro"),
      ),
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context, i) {
          return lst[i];
        },
      ),
    );
  }
}

class InfoCard {
  String namePro;
  String codePro;
  String pricePro;

  
  
}