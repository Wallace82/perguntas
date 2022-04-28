import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {

  final void Function(int) responder;
  final int perguntaSelecionada;
  final List<Map<String,Object>> perguntas;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get isPerguntaSelecionada{
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String,Object>> respostas = isPerguntaSelecionada ?
    perguntas[perguntaSelecionada].cast()['respostas']:
    [];

    return Column(
      children:<Widget> [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((resp) {
              return Resposta(
              resp['texto'].toString(),
              ()=> responder(int.parse(resp['ponto'].toString())),
        );
        }).toList(),
      ],
    );
  }
}
