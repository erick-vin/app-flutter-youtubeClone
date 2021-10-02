import 'package:flutter/material.dart';
import 'package:youtube/telas/Biblioteca.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Inicio.dart';
import 'package:youtube/telas/Inscricao.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.white,
          title: Image.asset(
            "imagens/youtube.png",
            width: 98,
            height: 22,
          ),
          actions: [
            IconButton(
              onPressed: () {
                print("ação: videocam");
              },
              icon: Icon(Icons.videocam),
            ),
            IconButton(
              onPressed: () {
                print("ação: pesquisa");
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                print("ação: conta");
              },
              icon: Icon(Icons.account_circle),
            )
          ],
        ),
        body: Container(child: telas[_indiceAtual]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (indice) {
            setState(() {
              _indiceAtual = indice;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(label: "Início", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Em Alta", icon: Icon(Icons.whatshot)),
            BottomNavigationBarItem(
                label: "Inscrições", icon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                label: "Biblioteca", icon: Icon(Icons.folder)),
          ],
        ));
  }
}
