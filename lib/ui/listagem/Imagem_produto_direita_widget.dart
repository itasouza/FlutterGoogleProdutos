import 'package:flutter/material.dart';
import 'package:google_produtos/models/produtos.dart';
import 'package:google_produtos/ui/detalhe/produto_detalhe_page.dart';
import 'package:google_produtos/widgets/fade_page_route.dart';
import 'blue_button.dart';


class ImagemProdutoDireitaWidget extends StatelessWidget {

  final screenHeight;
  final imagemFundoProduto;

  final Produtos produto;
  const ImagemProdutoDireitaWidget({Key key, this.screenHeight,this.imagemFundoProduto, this.produto}) : super(key: key);

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
    child:Container(
      padding: const EdgeInsets.only(left: 32),
      height: screenHeight * 0.3,
      color: produto.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(produto.descricao, style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),),
                SizedBox(height: 10,),
                BlueButton(
                 produto: produto,
               )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: -50,
                  top: 50,
                  child: Transform.rotate(
                    angle: -0.2,
                    child: Image.asset(produto.imagePath),),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
   );
  }
}