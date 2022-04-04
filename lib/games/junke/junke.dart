import 'package:flutter/material.dart';
import 'dart:math';


void main(List<String> args){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Junke(),
      )
  );
}

class Junke extends StatefulWidget {
  const Junke({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Junke> {

  //text result
  String resultado = "";

  //imagem do app padrão (app`s image)
  String _imagepadrao = "assets/junke/padrao.png";

  //imagens para uso (images for uses)
  List<String> images  = [
   "assets/junke/papel.png", //pedra
   "assets/junke/pedra.png", // tesoura
   "assets/junke/tesoura.png" // papel
  ];

  void _play(int valor){
    //método que faz a jogada randômica (method that makes randomly)
    resultado = "";

    setState(() {
      int randomic = Random().nextInt(3);
      String choice = images[randomic];
      _imagepadrao = choice; // altera a imagem (change image)
      print("${randomic == valor}");
      if(randomic == 1 && valor == 1){
        resultado = "Draw!";
      }
      if(randomic == 0 && valor == 1){
        resultado = "You Lose!";
      }if(randomic == 2 && valor == 1){
        resultado = "You Win!";
      }

      if(randomic == 0 && valor == 2){
        resultado = "You Win!";
      }else if(randomic == 1 && valor == 2){
        resultado = "You Lose!";
      }else if(randomic ==2 && valor == 2){
        resultado = "Draw!";
      }

      if(randomic == 0 && valor == 3){
        resultado = "Draw!";
      }else if(randomic == 1 && valor == 3){
        resultado = "You Win!";
      }else if(randomic == 2 && valor == 3){
        resultado = "You Lose!";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //barra superior (top bar)
        appBar: AppBar(
          centerTitle: true,
          title: Text("Rock, Paper and Scissors"),
          backgroundColor: Colors.indigo,
        ),

        //conteúdo (content)
        body: Center(


          child: Container(
            padding: EdgeInsets.only(top:32, bottom: 16),

            child: Column(


              children: <Widget>[

                  Text(
                      "CPU Choice",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),

                  Image.asset(_imagepadrao),
                  Text("\n $resultado \n",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),

                  Text(
                    "Choose your option below:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                Text("\n"),
                
                Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //classe que detecta movimentos (detect click)
                      GestureDetector(
                        onTap: (){
                          _play(1);
                        },
                        child:Image.asset("assets/junke/pedra.png", height: 95,),
                      ),

                      GestureDetector(
                        onTap: (){
                          _play(2);
                        },
                        child: Image.asset("assets/junke/tesoura.png", height: 95),
                      ),

                      GestureDetector(
                        onTap: (){
                          _play(3);
                        },
                        child: Image.asset("assets/junke/papel.png", height: 95),
                      )
                    ],
                )

              ],
            ),
          ),
        ),
    );
  }
}
