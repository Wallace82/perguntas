import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());



class PerguntaApp extends StatelessWidget{

  void responder(){
    print('Pergunta repondida!');
  }

  @override
  Widget build(BuildContext context){

    final perguntas  = ['Qual é sua cor favorita?', 'Qual é seu animal favorito?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
           children:<Widget> [
             Text(perguntas[0]),
             RaisedButton(
                 child: Text('Resposta 1') ,
                 onPressed: (){
                   print('Resposta 1 respondida!');
                 }
             ),
             RaisedButton(
                 child: Text('Resposta 2') ,
                 onPressed: ()=> print('Resposta 2 respondida!')
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