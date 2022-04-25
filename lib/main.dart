import 'package:flutter/material.dart' show AppBar, BuildContext, Column, MaterialApp, RaisedButton, Scaffold, State, StatefulWidget, Text, Widget, runApp;
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';


main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{

  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      if (_perguntaSelecionada >= 5) {
        _perguntaSelecionada = 0;
      }
      else {
        _perguntaSelecionada++;
      }

      print(_perguntaSelecionada);
    });

  }

  @override
  Widget build(BuildContext context){

    final perguntas  = [
      'Qual é sua cor favorita?',
      'Qual é seu animal favorito?',
      'Qual é seu time favorita?',
      'Quantos anos você tem?',
      'Em qual cidade você mora?',
      'Você gosta de flutter?'
    ];


    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children:<Widget> [
              Questao(perguntas[_perguntaSelecionada]),
              Resposta('Pergunta1',_responder),
              Resposta('Pergunta2',_responder),
              Resposta('Pergunta3',_responder)
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