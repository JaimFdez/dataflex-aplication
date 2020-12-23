import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClientsPage extends StatefulWidget {
  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
            child: _cardClients(context),
          );
        },
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: ()=> Navigator.pushNamed(context, 'createClient'),
          child: SvgPicture.asset('assets/icons/bxs-user-plus.svg', color: Colors.white),
          ),
      );
  }
  }

  Widget _cardClients(context) {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(8.0)
        ),
      child: InkWell(
        onTap: (){},
          child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Row(
            children: [
              CircleAvatar(
                child: Text('C', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),)
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CONECTA RETAIL S.A.', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                    SizedBox(height: 8.0,),
                    Row(
                      children: [
                        Text('RUC: ', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),),
                        Text('20525426778')
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      )
      
    );
  }