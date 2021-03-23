import 'package:flutter/material.dart';
import 'package:dataflex_erp/src/pages/sales_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0: return SalesPage();
    }
  }
  _onSelectItem(int pos){
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventas', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      drawer: _menuDrawer(),
      body: _getDrawerItemWidget(_selectDrawerItem),
      // body: _botonesRedondeados(context),
    );
  }

  Widget _menuDrawer() {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Christian', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)), 
              accountEmail: Text('christian6@gmail.com', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text('C', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),  
              ),
            ),
            ListTile(
              title: Text('Ventas', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              leading: Icon(Icons.camera_alt),
              selected: (0 == _selectDrawerItem),
              onTap: (){
                _onSelectItem(0);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Salir', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              leading: Icon(Icons.exit_to_app),
              onTap: (){},
            )
          ],
        ),
      );
  }
}