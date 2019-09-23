import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: Drawer(
        // Agrega un ListView al drawer. Esto asegura que el usuario pueda desplazarse
        // a través de las opciones en el Drawer si no hay suficiente espacio vertical
        // para adaptarse a todo.
        child: ListView(
          // Importante: elimine cualquier padding del ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Opciones'),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              onTap: () => Navigator.of(context).pushNamed('/'),
            ),
            ListTile(
              title: Text('Iniciar sesión'),
              onTap: () => Navigator.of(context).pushNamed('/login'),
            ),
          ],
        ),
      ),
      body: Material(
        color: Colors.deepOrange,
        child: Center(
          child: Text(
            "Hola Flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
