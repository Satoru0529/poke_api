import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_book/view_model/pokemon_list_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokemonListProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: state.when(
          data: (pokemonList) => Center(
            child: ListView.builder(
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                return Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.network(
                        pokemonList[index].imageUrl,
                        width: 100,
                        height: 100,
                      ),
                      Text(pokemonList[index].name),
                    ],
                  ),
                ));
              },
            ),
          ),
          error: (error, stack) =>
              const Text('Oops, something unexpected happened'),
          loading: () => const Center(child: CircularProgressIndicator()),
        ));
  }
}
