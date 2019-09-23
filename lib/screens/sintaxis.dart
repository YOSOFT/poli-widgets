import 'package:flutter/material.dart';

class Sintaxis extends StatelessWidget {
  final TextStyle bold24Roboto =
      TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w900);
  final TextStyle tituloTexto = TextStyle(
    fontSize: 30,
    letterSpacing: 3,
    color: Colors.orange,
  );
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Ajustes de texto
              Text('Ajustes de texto',style: tituloTexto,),
              Container(
                width: 320.0,
                height: 240.0,
                color: Colors.purpleAccent[100],
                child: Text(
                  'Hola Flutter',
                  style: TextStyle(
                      fontFamily: 'Georgia', fontSize: 24, color: Colors.white),
                ),
              ),
              // Centrar Elementos
              Text('Centrar Elementos',style: tituloTexto,),
              Container(
                width: 320.0,
                height: 240.0,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent[200],
                ),
                child: Center(
                  child: Text('Hola Flutter', style: bold24Roboto),
                ),
              ),
              // Ancho del contenedor
              Text('Ancho del contenedor',style: tituloTexto,),
              Container(
                color: Colors.grey[300],
                width: 320,
                height: 240,
                child: Center(
                  child: Container(
                    color: Colors.red[400],
                    width: 240,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Lorem ipsum',
                      style: bold24Roboto,
                    ),
                  ),
                ),
              ),
              // Posicion absoluta
              Text('Posicion absoluta',style: tituloTexto,),
              Container(
                color: Colors.blue[300],
                width: 320,
                height: 240,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        child: Text(
                          'Loremipsum',
                          style: bold24Roboto,
                        ),
                        color: Colors.red,
                        padding: EdgeInsets.all(16),
                      ),
                      top: 24,
                      left: 24,
                    ),
                  ],
                ),
              ),
              // Rotando componentes
              Text('Rotando componentes',style: tituloTexto,),
              Container(
                color: Colors.green[300],
                width: 320,
                height: 240,
                child: Center(
                  child: Transform(
                    transform: Matrix4.identity()..rotateZ(15 * 3.1415 / 180),
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        'Lorem ipsum',
                        style: bold24Roboto,
                      ),
                      color: Colors.red,
                      padding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
              // Escalando componentes
              Text('Escalando componentes',style: tituloTexto,),
              Container(
                color: Colors.grey,
                width: 320,
                height: 240,
                child: Center(
                  child: Transform(
                    child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Lorem ipsum',
                        style: bold24Roboto,
                      ),
                    ),
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..scale(1.5),
                  ),
                ),
              ),
              // Gradiente lineal
              Text('Gradiente lineal',style: tituloTexto,),
              Container(
                width: 320,
                height: 240,
                color: Colors.amber,
                child: Center(
                  child: Container(
                    child: Text(
                      'lorem',
                      style: bold24Roboto,
                    ),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        gradient: LinearGradient(
                            begin: const Alignment(0.0, -1.0),
                            end: const Alignment(0.0, 0.6),
                            colors: <Color>[
                              const Color(0xffef5350),
                              const Color(0x00ef5350),
                            ])),
                  ),
                ),
              ),
              // Redondeo de esquinas
              Text('Redondeo de esquinas',style: tituloTexto,),
              Container(
                color: Colors.greenAccent,
                width: 320,
                height: 240,
                child: Center(
                  child: Container(
                    child: Text(
                      'Lorem ipsum',
                      style: bold24Roboto,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    padding: EdgeInsets.all(16),
                  ),
                ),
              ),
              // Sombras a las cajas
              Text('Sombras a las cajas',style: tituloTexto,),
              Container(
                color: Colors.green,
                width: 320,
                height: 240,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'loremp',
                      style: bold24Roboto,
                    ),
                    decoration:
                        BoxDecoration(color: Colors.red, boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color(0xcc000000),
                          blurRadius: 4.0,
                          offset: Offset(0.0, 2.0)),
                      BoxShadow(
                          color: Color(0x80000000),
                          blurRadius: 20.0,
                          offset: Offset(0.0, 6.0)),
                    ]),
                  ),
                ),
              ),
              // Circulos y elipses
              Text('Circulos y elipses',style: tituloTexto,),
              Container(
                color: Colors.blueGrey,
                width: 320,
                height: 240,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: Text(
                      'data',
                      style: bold24Roboto,
                    ),
                    padding: EdgeInsets.all(16),
                    width: 160,
                    height: 160,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
