import 'package:flutter/material.dart';
import 'connect.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _drawerKey = new GlobalKey<ScaffoldState>();				//Key para viabilizar botão que chama Drawer
	@override
  Widget build(BuildContext context) {
    return Scaffold(
			key: _drawerKey,
			drawer: Drawer(
				child: ListView(
					padding: EdgeInsets.zero,
					children: <Widget>[
						DrawerHeader(
							decoration:	BoxDecoration(color:Colors.black),
							child: Text("_Olá,",
							style:TextStyle(
								color: Colors.white,
								fontSize: 40
							)),
						),
						ListTile(
							title: Text("_Parear dispositivo",
							style: TextStyle(color:Colors.black54, fontSize:22),
							),
							leading: Icon(Icons.bluetooth),
							onTap: (){Navigator.push(
								context,
								MaterialPageRoute(builder: (context) =>Conecta()));
							},
						),
					],
				)
			),
			floatingActionButton: FloatingActionButton(
				child: Icon(Icons.menu),
				backgroundColor: Colors.black,
				onPressed: ()=>_drawerKey.currentState.openDrawer(),
			),
			body: Center(
				child: Text("Bem vindo à PlayPi"),
			),
		);
  }
}