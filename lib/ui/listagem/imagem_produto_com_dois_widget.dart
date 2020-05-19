import 'package:flutter/material.dart';
import 'package:google_produtos/models/produtos.dart';
import 'package:google_produtos/ui/listagem/vertical_produto_item_widget.dart';


class ImagemProdutoComDoisWidget extends StatelessWidget {

  final screenHeight;

  final Produtos produto1, produto2;

  const ImagemProdutoComDoisWidget({Key key, this.screenHeight, this.produto1, this.produto2}) : super(key: key);


 @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.25,
      child: Row(
        children: <Widget>[
          Expanded(
            child: VerticalProdutoItemWidget(
              screenHeight: screenHeight,
              produto: produto1
            ),
          ),
          Expanded(
            child: VerticalProdutoItemWidget(
                screenHeight: screenHeight,
                produto: produto2
            ),
          ),
        ],
      ),
    );
  }
}