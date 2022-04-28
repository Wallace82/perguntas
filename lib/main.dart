import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'ponto': 8},
        {'texto': 'Vermelho', 'ponto': 4},
        {'texto': 'Verde', 'ponto': 6},
        {'texto': 'Amarelo', 'ponto': 10},
      ]
    },
    {
      'texto': 'Quantos anos você tem?',
      'respostas': [
        {'texto': '15', 'ponto': 3},
        {'texto': '20', 'ponto': 7},
        {'texto': '1', 'ponto': 9},
        {'texto': '90', 'ponto': 10},
      ]
    },
    {
      'texto': 'Qual é seu time favorita?',
      'respostas': [
        {'texto': 'Flamengo', 'ponto': 10},
        {'texto': 'Botafogo', 'ponto': 3},
        {'texto': 'Vasco', 'ponto': 5},
        {'texto': 'Fluminense', 'ponto': 8},
      ]
    },
    {
      'texto': 'Qual é seu animal favorito??',
      'respostas': [
        {'texto': 'Cachorro', 'ponto': 5},
        {'texto': 'Cavalo', 'ponto': 1},
        {'texto': 'Gato', 'ponto': 10},
        {'texto': 'Peixe', 'ponto': 10},
      ]
    },
  ];

  bool get isPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontucao) {
    if (isPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontucao;
      });
    }
  }

  void _reiniciarQuestionario(){
        setState(() {
          _pontuacaoTotal = 0;
          _perguntaSelecionada = 0;
        });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: isPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder)
              : Resultado(_pontuacaoTotal,_reiniciarQuestionario)),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
