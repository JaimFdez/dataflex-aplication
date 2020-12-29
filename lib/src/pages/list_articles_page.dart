import 'package:flutter/material.dart';

class ListArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de articulos',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
            child: _cardArticles(),
          );
        },
      ),
    );
  }

  Widget _cardArticles() {
    return Card(
      elevation: 1.0,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('HP Ink tank415', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0), overflow: TextOverflow.ellipsis,)
                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Código: 1957'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Stock: 100 cajas', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),),
                        Text('Precio: S/. 145.00', style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
