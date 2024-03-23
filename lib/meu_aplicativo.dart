import 'package:flutter/material.dart';
import 'package:flutter_aula_1/pages/coin_page.dart';

class Meuaplicativo extends StatelessWidget {
  const Meuaplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoinBase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.indigo,
      ),
      home: CoinPage(),
    );
  }
}
