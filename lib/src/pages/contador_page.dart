import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  
  final _estiloTexto = new TextStyle( fontSize: 25.0 );
  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( 'Número de clicks:', style: _estiloTexto,),
            Text( '$_conteo', style: _estiloTexto,),
          ], 
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
   
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () => setState(() => _reset()),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => setState(() => _agregar()),
        ),
        SizedBox(width: 5.0,),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () => setState(() => _restar()),
        ),
        SizedBox(width: 30.0,),
      ],    
    );
  }

  void _agregar() {
    setState(() => _conteo++ );
  }

  void _restar() {
    setState(() => _conteo-- );
  }

  void _reset() {
    setState(() => _conteo = 0 );
  }
}