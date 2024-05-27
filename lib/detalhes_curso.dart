import 'package:flutter/material.dart';
import 'curso.dart';

class DetalhesCurso extends StatelessWidget {
  final Curso curso;

  DetalhesCurso({required this.curso});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(curso.titulo)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(curso.imagem),
            SizedBox(height: 16.0),
            Text(
              curso.descricao,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

