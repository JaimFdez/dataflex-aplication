import 'package:flutter/material.dart';
import 'tabs/order_display.dart';
import 'package:dataflex_erp/src/pages/tabs/order_diplay2.dart';

class CreateOrderPage extends StatefulWidget {
  CreateOrderPage({Key? key}) : super(key: key);

  @override
  _CreateOrderPageState createState() => _CreateOrderPageState();
}

class _CreateOrderPageState extends State<CreateOrderPage> with SingleTickerProviderStateMixin {

  late TabController _controller;

  @override
  void initState() { 
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: getTabBarView(<Widget>[
        OrderDisplayWidget('Primera pantalla'),
        OrderDisplay2Widget('Segunda pantalla'),
      ]),
      // floatingActionButton: _fab(),
    );
  }

  PreferredSizeWidget _appbar() {
    return AppBar(
      actions: [
        IconButton(
            icon: Icon(Icons.check, size: 24),
            onPressed: () {},
            splashRadius: 25.0,
        ),
      ],
      title: Text(
        "Crear nuevo pedido",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      bottom: getTabBar(),
    );
  }

  /*Widget _fab() {
    return FloatingActionButton(
        tooltip: 'Añadir Producto',
        child: Icon(Icons.add, size: 35),
        onPressed: () {
          Navigator.pushNamed(context, 'listArticles');
          // showSearch(
          //   context: context,
          //   delegate: SearchBar(),
          // );
        });
  }*/

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(child: Icon(Icons.person),),
        Tab(child: Text('Pedidos', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),),
      ],
      controller: _controller,
    );
  }

  TabBarView getTabBarView(var displays) {
    return TabBarView(
      children: displays,
      controller: _controller,
    );
  }
}
