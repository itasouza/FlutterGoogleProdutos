import 'package:flutter/material.dart';
import 'package:google_produtos/models/produtos.dart';
import 'package:google_produtos/ui/listagem/top_bar.dart';
import 'package:google_produtos/widgets/red_button.dart';
import 'Imagem_produto_direita_widget.dart';
import 'Imagem_produto_esquerda_widget.dart';
import 'imagem_produto_com_dois_widget.dart';


//https://github.com/TechieBlossom/googleproductsappflutter/tree/master/lib/ui/products_listing_page
//https://www.youtube.com/watch?v=Gfzox8WawMw&list=PL342JVRNQxEA4rOUAEhPGkVYfNcfqqkKt&index=2
//https://pt.pngtree.com/free-cars-png

class ProdutosListaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset("assets/images/google_logo.png"),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("assets/icons/menu.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopBar(),
            ImagemProdutoDireitaWidget(
              screenHeight: screenHeight,
              produto: pixel,
            ),
            ImagemProdutoEsquerdaWidget(
              screenHeight: screenHeight,
              produto: stadia,
              imagemFundoProduto: "assets/images/stadia_logo.png",
            ),
            ImagemProdutoComDoisWidget(
              screenHeight: screenHeight,
              produto1: pixelStand,
              produto2: dayDreamView,
            ),
            ImagemProdutoEsquerdaWidget(
              screenHeight: screenHeight,
              produto: nesthub,
              imagemFundoProduto: "assets/images/fundo_novo_produto.png",
            ),
            ImagemProdutoDireitaWidget(
              screenHeight: screenHeight,
              produto: pixel,
            ),
            ImagemProdutoComDoisWidget(
              screenHeight: screenHeight,
              produto1: pixelStand,
              produto2: dayDreamView,
            ),
            RedButton(buttonText: "Ver tudo"),
          ],
        ),
      ),
    );
  }
}