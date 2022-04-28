import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int resultado;
  final void Function() onReiniciarQuestionario;

  Resultado(this.resultado,this.onReiniciarQuestionario);

   String get fraseResultado{
    if(resultado<10){
      return 'Parabéns';
    }else if(resultado<25){
      return 'Você é bom';
    }else if(resultado<35){
      return 'Impressionante';
    }
    else{
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child:Text(
              fraseResultado.toString(),
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.green,
                  fontWeight: FontWeight.bold
              ),
            )
        ),
        FlatButton(
          onPressed: onReiniciarQuestionario,
          textColor: Colors.white,
          color: Colors.blue ,
          child: Text('Reiniciar?'),
        )
      ],
    );
  }
}
