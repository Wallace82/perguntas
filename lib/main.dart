import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'package:projeto_perguntas/resultado.dart';


main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{

  var _perguntaSelecionada = 0;

  final List<Map<String,Object>> _perguntas  = const [
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

  bool get isPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder() {
    if(isPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }




  @override
  Widget build(BuildContext context){


    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: isPerguntaSelecionada ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              responder: _responder
          )
              : Resultado('Parabéns')
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