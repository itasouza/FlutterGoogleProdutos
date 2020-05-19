import 'package:flutter/material.dart';
import 'package:google_produtos/models/produtos.dart';
import 'package:google_produtos/widgets/red_button.dart';

import 'icon_titulo_widget.dart';


class ProdutoContentWidget  extends StatelessWidget {

  final screenHeight;

  final Produtos produto;

  const ProdutoContentWidget({Key key, this.screenHeight, this.produto}) : super(key: key);


 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: screenHeight * 0.2,
          ),
          Hero(
            tag: produto.nome,
            child: Image.asset(
              produto.imagePath,
              height: screenHeight * 0.3,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "descrição*",
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                ),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: " R\$ ",
                    style: TextStyle(color: Color(0xFF0000FF), fontSize: 10),
                  ),
                  TextSpan(
                    text: "${produto.preco}",
                    style: TextStyle(
                      color: Color(0xFF0000FF),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ]),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(
                produto.nome.replaceAll("\n", " ") + "\t\t\t\t",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 17.0,
                ),
              ),
              Image.asset(
                "assets/images/stadia_logo.png",
                height: 20,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            produto.informacaoProduto,
            style: TextStyle(
              color: Color(0xFF909090),
              fontWeight: FontWeight.w300,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconTituloWidget(imagePath: "assets/icons/create.png", title: "Create"),
                IconTituloWidget(imagePath: "assets/icons/connect.png", title: "Connect"),
                IconTituloWidget(imagePath: "assets/icons/discover.png", title: "Dicover"),
              ],
            ),
          ),
          Divider(
            color: Color(0xFFECECEC),
            thickness: 1,
            height: 32,
          ),
          Row(
            children: <Widget>[
              RedButton(
                buttonText: "Comprar",
              ),
              Spacer(),
              Material(
                elevation: 4,
                color: Colors.white,
                shape: CircleBorder(),
                child: Icon(
                  Icons.add,
                  size: 35,
                  color: Color(0xFF0000FF),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}