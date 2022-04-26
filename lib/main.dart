import 'package:flutter/material.dart' show AppBar, BuildContext, Column, MaterialApp, RaisedButton, Scaffold, State, StatefulWidget, Text, Widget, runApp;
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';


main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{

  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      if (_perguntaSelecionada >= 3) {
        _perguntaSelecionada = 0;
      }
      else {
        _perguntaSelecionada++;
      }


    });

  }

  @override
  Widget build(BuildContext context){

    final List<Map<String,Object>> perguntas  = [
      {
        'texto':'Qual sua cor favorita?',
        'respostas':['Preto','Vermelho','Verde','Amarelo']
      },
      {
        'texto':'Quantos anos você tem?',
        'respostas':['15','20','1','90']
      },
      {
        'texto':'Qual é seu time favorita?',
        'respostas':['Flamengo','Botafogo','Vasco','Fluminense']
      },
      {
        'texto':'Qual é seu animal favorito??',
        'respostas':['Cachorro','Cavalo','Gato','Peixe']
      },
    ];

    List<Widget> respostas = [];
    for(String textRespo in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textRespo, _responder));
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children:<Widget> [
              Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
              ...respostas,
            ],
          )
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  @override
  _PerguntaAppState createState() {
   return _PerguntaAppState();
  }

}