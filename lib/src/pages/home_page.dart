import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Hola')
          ),
      ),
      body: ListView(
        padding: EdgeInsets.all(32.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cardTipo1(),
              cardTipo2(),
            ],
            )
        ],
      ),
    );
  }


  Widget cardTipo1() {
    return Card(
      color: Colors.grey,
      child: Column(
        children: [
          Icon(Icons.shopping_cart, size: 64.0,),
          Text('Pedidos'),
        ],
      ),
    );
  }

  Widget cardTipo2() {
    return Card(
      color: Colors.grey,
      child: Column(
        children: [
          Icon(Icons.shopping_cart, size: 64.0,),
          Text('Pedidos'),
        ],
      ),
    );
  }

}