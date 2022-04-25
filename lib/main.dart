import 'package:flutter/material.dart' show AppBar, BuildContext, Column, MaterialApp, RaisedButton, Scaffold, State, StatefulWidget, Text, Widget, runApp;
import 'package:projeto_perguntas/questao.dart';


main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{

  var persguntaSelecionada = 0;

  void _responder(){
    setState(() {
      if(persguntaSelecionada>=5){
        persguntaSelecionada = 0;
      }
      else {
        persguntaSelecionada++;
      }
    });

    print('Pergunta repondida!');
  }


  @override
  Widget build(BuildContext context){

    final perguntas  = [
      'Qual é sua cor favorita?',
      'Qual é seu animal favorito?',
      'Qual é sua time favorita?',
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
              Questao(perguntas[persguntaSelecionada]),
              RaisedButton(
                  child: Text('DAVI') ,
                  onPressed: _responder
              ),
              RaisedButton(
                  child: Text('Serena') ,
                  onPressed: _responder
              ),
              RaisedButton(
                  child: Text('Maria helena') ,
                  onPressed: _responder
              ),
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