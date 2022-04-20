import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp>{

  var persguntaSelecionada = 0;

  void responder(){
    setState(() {
      persguntaSelecionada++;
    });

    print('Pergunta repondida!');
  }


  @override
  Widget build(BuildContext context){

    final perguntas  = [
      'Qual é sua cor favorita?',
      'Qual é seu animal favorito?',
      'Qual é sua cor favorita?',
      'Qual é seu animal favorito?',
      'Qual é sua cor favorita?',
      'Qual é seu animal favorito?'
    ];


    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children:<Widget> [
              Text(perguntas[persguntaSelecionada]),
              RaisedButton(
                  child: Text('Resposta 1') ,
                  onPressed: responder
              ),
              RaisedButton(
                  child: Text('Resposta 2') ,
                  onPressed: responder
              ),
              RaisedButton(
                  child: Text('Resposta 3') ,
                  onPressed: responder
              ),
            ],
          )
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  @override
  PerguntaAppState createState() {
   return PerguntaAppState();
  }

}