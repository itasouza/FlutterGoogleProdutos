import 'package:flutter/material.dart';
import 'package:google_produtos/models/produtos.dart';
import 'package:google_produtos/ui/detalhe/produto_content_widget.dart';
import 'package:google_produtos/ui/detalhe/produto_detalhe_background.dart';
import 'package:google_produtos/ui/detalhe/produto_detalhe_top_bar.dart';


class ProdutoDetalhePage extends StatelessWidget {
  

  final Produtos produto;

  const ProdutoDetalhePage({Key key, @required this.produto}) : super(key: key);

@override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ProdutoDetalheBackground(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProdutoDetalheTopBar(),
                ProdutoContentWidget(produto: produto, screenHeight: screenHeight),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
