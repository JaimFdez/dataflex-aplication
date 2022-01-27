import 'package:flutter/material.dart';

class OrderDisplay2Widget extends StatefulWidget {

  final img;
  OrderDisplay2Widget(this.img);

  @override
  _OrderDisplay2WidgetState createState() => _OrderDisplay2WidgetState();
}

class _OrderDisplay2WidgetState extends State<OrderDisplay2Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: ()=> Navigator.pushNamed(context, 'listArticles'),
          child: Icon(Icons.add),
          ),
    );
  }
}