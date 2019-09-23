import 'package:flutter/material.dart';
import 'package:poli_widgets/screens/home.dart';
import 'package:poli_widgets/screens/login.dart';
import 'package:poli_widgets/screens/sintaxis.dart';
import 'package:poli_widgets/screens/widgets.dart';

void main() {
  runApp(PoliWidgetsApp());
}

class PoliWidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Poli Widgets",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context)  => IniciarSesion(),
        '/widgets': (context)  => MisWidgets(),
        '/sintaxis': (context)  => Sintaxis(),
      },
    );
  }
}
