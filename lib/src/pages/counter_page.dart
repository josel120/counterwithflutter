import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  
  @override
  createState() {
    return _CouterPageState();
  }
  

}
class _CouterPageState extends State<CounterPage> {

  final _styleText =  new TextStyle(fontSize: 30);
  int _contador = 0;

  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clics:', style: _styleText),
            Text('$_contador', style: _styleText),
          ],
        )
      ),
      floatingActionButton: _crearBotones()

    );
  }

  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(width: 5.0),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar),
      ],
    );
  }
  void _agregar() {
    setState(() {
      return _contador++;
    });
  }
  void _sustraer() {
    setState(() {
      return _contador--;
    });
  }
  void _reset() {
    setState(() {
      return _contador = 0;
    });
  }

}