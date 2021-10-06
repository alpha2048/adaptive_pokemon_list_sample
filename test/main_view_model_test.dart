import 'package:adaptive_pokemon_list_sample/data/model/pokemon_response.dart';
import 'package:adaptive_pokemon_list_sample/data/model/pokemon_sprite_response.dart';
import 'package:adaptive_pokemon_list_sample/data/repository/poke_api_repository.dart';
import 'package:adaptive_pokemon_list_sample/presentation/main_view_model.dart';
import 'package:adaptive_pokemon_list_sample/presentation/main_view_model_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeRepository implements PokeRepositoryImpl {
  @override
  Future<List<PokemonResponse>> fetchPokemonList() async {
    return [
      const PokemonResponse(
          id: 1, sprites: PokemonSpriteResponse(frontDefault: ''))
    ];
  }
}

void main() {
  test('MainViewModel init test', () async {
    final container = ProviderContainer(
      overrides: [repositoryProvider.overrideWithValue(FakeRepository())],
    );

    //! autoDisposeしてると Bad state: Tried to use MainViewModel after `dispose` was called. が出るので使わない
    // final viewModel = container.read(mainViewModel.notifier);

    final viewModel = container.listen(mainViewModel);
    // コンストラクタのfetchを待つ
    await Future.delayed(const Duration(seconds: 1));

    final data = viewModel.read();
    expect(data is Loaded, isTrue);
    expect((data as Loaded).response, isList);
    expect(data.response, hasLength(1));
  });
}
