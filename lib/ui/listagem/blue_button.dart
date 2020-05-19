import 'package:flutter/material.dart';
import 'package:google_produtos/models/produtos.dart';
import 'package:google_produtos/ui/detalhe/produto_detalhe_page.dart';
import 'package:google_produtos/widgets/fade_page_route.dart';

class BlueButton extends StatelessWidget {

   final Produtos produto;

  const BlueButton({Key key, this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => Navigator.push(context, FadePageRoute(widget: ProdutoDetalhePage(produto: produto))),
      child: Text(
        produto.buttonText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 10,
        ),
      ),
      color: Color(0xFF0000FF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}