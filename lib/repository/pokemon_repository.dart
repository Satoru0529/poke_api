import '../service/pokemon_api_client.dart';

class PokemonRepository {
  final api = PokemonApiClient();
  dynamic fetchPokemonList() async {
    return await api.fetchPokemonList();
  }
}
