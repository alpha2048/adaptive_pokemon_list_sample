import 'package:adaptive_pokemon_list_sample/data/repository/poke_api_repository.dart';
import 'package:adaptive_pokemon_list_sample/presentation/main_view_model_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final repositoryProvider = Provider.autoDispose((ref) => PokeRepositoryImpl());

final mainViewModel =
    StateNotifierProvider.autoDispose<MainViewModel, MainViewModelData>(
        (ref) => MainViewModel(ref.read(repositoryProvider)));

class MainViewModel extends StateNotifier<MainViewModelData> {

  final PokeRepository repository;

  MainViewModel(this.repository): super(const MainViewModelData.loading()) {
    fetch();
  }

  Future<void> fetch() async {
    state = const MainViewModelData.loading();

    repository.fetchPokemonList().then((res) async {
      state = MainViewModelData.loaded(response: res);
    }).catchError((_) {
      state = const MainViewModelData.error();
    });
  }
}