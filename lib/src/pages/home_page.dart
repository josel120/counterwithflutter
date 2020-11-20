import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final styleText =  new TextStyle(fontSize: 30);

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
          Text('Número de clics:', style: styleText),
          Text('0', style: styleText),
        ],
      )
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon( Icons.add ),
      onPressed: () {
        print('heyyyyy');
      },
    ),

  );
}

}