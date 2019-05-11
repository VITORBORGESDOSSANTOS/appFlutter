import "package:flutter/material.dart";

void main(){

  runApp(MaterialApp(
      title: 'CalculadoraBasica',
      home: CalculadoraBasica()
  ));
}

class CalculadoraBasica extends StatelessWidget{

  double number01 = 0.0;
  double number02 = 0.0;

  @override
  Widget build(BuildContext context){

    TextField tfNumber01 = TextField();
    TextField tfNumber02 = TextField();
    RaisedButton btnCalcular = RaisedButton(
      child: Text('Calcular'),
      onPressed: () {
        double add = number01 + number02;
        double sub = number01 - number02;
        AlertDialog resultDialog = AlertDialog(
          content: Text('Resultados: add = $add & sub = $sub')
        );
        showDialog(context: context,child: resultDialog);
      },
    );

    Container container = Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[tfNumber01, tfNumber02, btnCalcular],//<widget>
      ),
    );
    AppBar appBar = AppBar(
      title: Text('Calculadora Basica'),
    );
    Scaffold scaffold = Scaffold(
      appBar: appBar,
      body: container
    );

    return scaffold;

  }


}