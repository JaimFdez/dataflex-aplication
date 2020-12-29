import 'package:flutter/material.dart';

class OrderDisplayWidget extends StatefulWidget {

  final img;
  OrderDisplayWidget(this.img);

  @override
  _OrderDisplayWidgetState createState() => _OrderDisplayWidgetState();
}

class _OrderDisplayWidgetState extends State<OrderDisplayWidget> {

  Widget _buildClientTextFiekd() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Cliente',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      children: [
        _buildClientTextFiekd()
      ],
    );
  }
}