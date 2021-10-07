import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:adaptive_components/adaptive_components.dart';
import 'package:adaptive_pokemon_list_sample/presentation/main_view_model.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, watch, _) {
        return watch(mainViewModel).map(
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (state) {
            final pokeList = state.response;
            return pokeList.isNotEmpty
                ? SingleChildScrollView(
                    child: AdaptiveColumn(
                      children: pokeList
                          .map((pokemon) => AdaptiveContainer(
                                columnSpan: 2,
                                color: Colors.transparent,
                                child:
                                    Image.network(pokemon.sprites.frontDefault),
                              ))
                          .toList(),
                    ),
                  )
                : const Center(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        "データ取得に失敗しました",
                        style: TextStyle(fontSize: 19),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
          },
          error: (state) => const Center(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "データ取得に失敗しました",
                style: TextStyle(fontSize: 19),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      }),
    );
  }
}