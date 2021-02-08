/*  Links importantes
Package Bluetooth:
  Pacote			-https://pub.dev/packages/flutter_blue    ##ESTÁ EM VERSÃO ALPHA POR ENQUANTO###
  Repositório -https://github.com/pauldemarco/flutter_blue
	Plug-in:		-https://medium.com/flutter-comunidade-br/utilizando-bluetooth-no-flutter-3e1c480f0224
*/

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class Conecta extends StatefulWidget {
  @override
  _ConectaState createState() => _ConectaState();
}

class _ConectaState extends State<Conecta> {
  FlutterBlue fBlue = FlutterBlue.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_Parear Dispositivo"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.search),
        backgroundColor: Colors.black,
        onPressed: (){
          //TODO: IMPLEMENTAR BUSCA NO FLUTTERBLUE
        }
      ),
    );
  }
}