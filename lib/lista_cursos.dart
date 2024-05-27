import 'package:flutter/material.dart';
import 'curso.dart';
import 'detalhes_curso.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cursos de Programação',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: ListaCursos(),
    );
  }
}

class ListaCursos extends StatelessWidget {
  final List<Curso> cursos = [
    Curso(
      titulo: 'Programação em Java',
      descricao:
          'Aprenda a programar em Java, uma linguagem poderosa e amplamente utilizada.',
      imagem: "imagem/JavaImagem.png",
      professor: 'Antonio Marcos Selmini',
    ),
    Curso(
      titulo: 'Desenvolvimento com Flutter',
      descricao: 'Desenvolva aplicações móveis multiplataforma com Flutter.',
      imagem: "imagem/flutterImagem.png",
      professor: 'Diego Camilo Martins Vieira',
    ),
    Curso(
      titulo: 'Android com Kotlin',
      descricao: 'Desenvolva aplicações Android utilizando Kotlin.',
      imagem: 'imagem/kotlinImagem.jpg',
      professor: 'Ewerton Luiz de Lima Carreira',
    ),
    Curso(
      titulo: 'Programação em JavaScript',
      descricao: 'Domine o JavaScript para desenvolvimento web e muito mais.',
      imagem: 'imagem/JavaScriptImagem.jpg',
      professor: 'Thiago Souza Xavier',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cursos de Programação'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: cursos.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesCurso(curso: cursos[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          cursos[index].imagem,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.book,
                              size: 80,
                              color: Colors.blue,
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cursos[index].titulo,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            cursos[index].descricao,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  cursos[index].professor,
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(
                                      Icons.person,
                                      size: 40,
                                      color: Colors.black,
                                    );
                                  },
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Prof. ${cursos[index].professor}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
