import 'package:flutter/material.dart';

class MisWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      // Container es como un div
      // Estilos de textos
      // rows y columnas
      child: Center(
        child: Container(
          alignment: Alignment.center,
          // width: 300,
          // height: 300,
          // margin: EdgeInsets.only(left: 30.0),
          padding: EdgeInsets.all(30.0),
          color: Colors.redAccent,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'FullStack =>',
                      style: TextStyle(
                          fontFamily: 'Mansalva',
                          fontWeight: FontWeight.w400,
                          fontSize: 30.0,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Flutter, Crea aplicaciones hermosas',
                      style: TextStyle(
                          fontFamily: 'Mansalva',
                          fontWeight: FontWeight.w400,
                          fontSize: 30.0,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              LogoFlutter(),
              Miboton(),
              MiSaludo(),
            ],
          ),
        ),
      ),
      // Estilo de textos
    );
  }
}

class LogoFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage logo = AssetImage('lib/images/logo.png');
    Image imagen = Image(
      image: logo,
      width: 400.0,
      height: 200.0,
    );
    return Container(
      child: imagen,
    );
  }
}

class Miboton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: RaisedButton(
        child: Text('Saludar'),
        color: Colors.lightBlue,
        elevation: 5.0,
        onPressed: () {
          saludar(context);
        },
      ),
    );
  }

  saludar(BuildContext context) {
    var alerta = AlertDialog(
      title: Text('Flutter'),
      content: Text('Hola Flutter'),
    );
    showDialog(context: context, builder: (BuildContext context) => alerta);
  }
}

class MiSaludo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MiSaludoState();
}

class _MiSaludoState extends State<MiSaludo> {
  String nombre = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String cadena) {
            setState(() {
              nombre = cadena;
            });
          },
        ),
        Text('Hola $nombre')
      ],
    );
  }
}
