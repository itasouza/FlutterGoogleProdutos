import 'package:flutter/material.dart';

class Produtos {

   final String nome, descricao, buttonText, imagePath, imagemPathBackground, preco, informacaoProduto;
   final Color backgroundColor;
   
    Produtos({this.nome, this.descricao, this.backgroundColor, this.imagemPathBackground = "",
             this.buttonText, this.imagePath, this.preco = "", this.informacaoProduto = ""});

}

final Produtos pixelStand = Produtos(
  imagePath: "assets/images/pixelstand.webp",
  imagemPathBackground :"",
  nome: "Suporte de pixel",
  descricao: "New Release",
  buttonText: "Visualizar",
  backgroundColor: Color(0xFFF9F9F9),
  preco: "16,20",
  informacaoProduto: "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica "
                     "e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor."
);



final Produtos dayDreamView = Produtos(
  imagePath: "assets/images/daydream.png",
  imagemPathBackground :"",
  nome: "DayDream View",
  descricao: "Premium",
  buttonText: "Visualizar",
  backgroundColor: Color(0xFFE0DDFF),
  preco: "45,40",
  informacaoProduto: "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica "
                     "e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor."
);


final Produtos pixel = Produtos(
  imagePath: "assets/images/pixel.png",
  imagemPathBackground :"",
  nome: "Pixel 3a",
  descricao: "Conheça o Google Pixel 3a.",
  buttonText: "Visualizar",
  backgroundColor: Color(0xFFF5F5F5),
  preco: "85,56",
  informacaoProduto: "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica "
                     "e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor."
);

final Produtos stadia = Produtos(
    imagePath: "assets/images/stadia.png",
    imagemPathBackground :"",
    nome: "Google\nStadia",
    descricao: "New Release",
    buttonText: "Visualizar",
    backgroundColor: Color(0xFFFBE9EB),
    preco: "69,55",
    informacaoProduto: "Stadia é a nova nuvem baseada no Google "
        "plataforma de jogos que permite que você jogue seus jogos de vídeo git favoritos em várias telas instantaneamente."
  );

  final Produtos homemini = Produtos(
  imagePath: "assets/images/google_home_mini.png",
  imagemPathBackground :"",
  nome: "Home Mini",
  descricao: "Conheça o Google Home Mini.",
  buttonText: "Visualizar",
  backgroundColor: Color(0xFFF5F5F5),
  preco: "155,56",
  informacaoProduto: "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica "
                     "e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor."
);

final Produtos nesthub = Produtos(
    imagePath: "assets/images/nest_hub.png",
    imagemPathBackground :"",
    nome: "Google\nNest Hub Max",
    descricao: "New Release",
    buttonText: "Visualizar",
    backgroundColor: Color(0xFFFBE9EB),
    preco: "189,56",
    informacaoProduto: "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica "
                     "e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor."
);

