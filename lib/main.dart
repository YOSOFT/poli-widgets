import 'package:flutter/material.dart';
import 'package:poli_widgets/screens/home.dart';
import 'package:poli_widgets/screens/login.dart';

void main() {
  runApp(PoliWidgetsApp());
}

class PoliWidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Poli Widgets",
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context)  => IniciarSesion()
      },
    );
  }
}
