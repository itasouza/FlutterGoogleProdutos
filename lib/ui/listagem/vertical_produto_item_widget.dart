import 'package:flutter/material.dart';
import 'package:google_produtos/models/produtos.dart';
import 'package:google_produtos/ui/detalhe/produto_detalhe_page.dart';
import 'package:google_produtos/widgets/fade_page_route.dart';

class VerticalProdutoItemWidget extends StatelessWidget {

  final screenHeight;

  final Produtos produto;

  const VerticalProdutoItemWidget({Key key, this.produto, this.screenHeight}) : super(key: key);

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
      color: produto.backgroundColor,
      child: Column(
        children: <Widget>[
          Image.asset(
            produto.imagePath,
            height: screenHeight * 0.15,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            produto.nome,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color(0xFF3B3B43),
              fontSize: 14
            ),
          ),
          Text(
            produto.descricao,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Color(0xFF3B3B43),
                fontSize: 8
            ),
          ),
        ],
      ),
    ),
   );
  }
}