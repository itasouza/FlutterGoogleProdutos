import 'package:flutter/material.dart';


class TopBar extends StatelessWidget {
  const TopBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        color: Color(0xFFE0E0E0),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: TextField(
        style: TextStyle(fontSize: 16, color:Colors.black),
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color:Colors.grey, size:16),
          hintText: "Busca Produtos Google",
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
          ),         
      ),
    );
  }
}