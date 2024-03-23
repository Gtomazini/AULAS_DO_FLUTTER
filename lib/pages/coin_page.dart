import 'package:flutter/material.dart';
import 'package:flutter_aula_1/repositories/moeda_repo.dart';

class CoinPage extends StatelessWidget {
  const CoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepo.tabela;

    return Scaffold(
        appBar: AppBar(
          title: Text('Cripto Moedas'),
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int moeda) {
            return ListTile(
              leading: Image.asset(tabela[moeda].icone),
              title: Text(tabela[moeda].nome),
              trailing: Text(tabela[moeda].preco.toString()),
            );
          },
          padding: EdgeInsets.all(16),
          separatorBuilder: (_, __) => Divider(),
          itemCount: tabela.length,
        ));
  }
}
