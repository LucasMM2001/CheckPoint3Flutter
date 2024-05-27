import 'package:flutter/material.dart';
import 'lista_cursos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cursos de Programação',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListaCursos(),
    );
  }
}
