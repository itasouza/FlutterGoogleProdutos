import 'package:flutter/material.dart';
import 'package:google_produtos/models/produtos.dart';
import 'package:google_produtos/ui/detalhe/produto_detalhe_page.dart';
import 'package:google_produtos/widgets/fade_page_route.dart';
import 'blue_button.dart';


class ImagemProdutoEsquerdaWidget extends StatelessWidget {

  final screenHeight;
  final imagemFundoProduto;

  final Produtos produto;

  const ImagemProdutoEsquerdaWidget({Key key, this.screenHeight, this.imagemFundoProduto, this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.push(
          context,
          FadePageRoute(
            widget: ProdutoDetalhePage(
              produto: produto,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 32),
        height: screenHeight * 0.3,
        decoration: BoxDecoration(
          color:  produto.backgroundColor,
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.1), BlendMode.dstATop),
           // image: AssetImage('assets/images/stadia_logo.png'),
            image: AssetImage(imagemFundoProduto),
            )
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Hero(
                tag: produto.nome,
                child: Image.asset(produto.imagePath),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      produto.nome,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      produto.descricao,
                      style: TextStyle(fontSize: 8, color: Color(0xFF909090)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BlueButton(
                     produto: produto,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}