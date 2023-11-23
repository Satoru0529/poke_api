import 'package:flutter/material.dart';
import 'package:pokemon_book/model/pokemon.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.pokemon, {super.key});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        body: Center(
          child: Text(pokemon.name),
        ));
  }
}
