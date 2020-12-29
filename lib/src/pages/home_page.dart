import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventas', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Christian'), 
              accountEmail: Text('christian6@gmail.com'),
              currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('C', style: TextStyle(fontSize: 40.0)),  
              ),
              ),
            ListTile(
              title: Text('Ventas', style: TextStyle(fontWeight: FontWeight.bold),),
              leading: Icon(Icons.camera_alt),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              title: Text('Salir', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              leading: Icon(Icons.exit_to_app),
              onTap: (){},
            )
          ],
        ),
      ),
      body: Stack(
        children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 56.0),
                child: GridView.count(
                mainAxisSpacing: 32,
                crossAxisSpacing: 40,
                primary: false,
                crossAxisCount: 2,
                children: [
                  _customCard('Pedidos', 'assets/icons/notas1.1.svg', context, 'onvoice' ),
                  _customCard('Clientes', 'assets/icons/clientela.svg', context, 'clients'),
                ],
            ),
              ),
        ],
      )
    );
  }


  Widget _customCard(String textModulo, String iconModulo, context , String route) {

    final cardTextStyle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

    return Card(
      color: Color(0xffF2F2F2),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0)
      ),
      child: InkWell(
        onTap: ()=> Navigator.pushNamed(context, route),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconModulo, height: 80, ),
            // Icon(iconModulo, size: 100, color: Color(0xff1C83CE),),
            SizedBox(height: 8.0,),
            Text(textModulo, style: cardTextStyle,),
          ],
        ),
      ),
    );
  }

}