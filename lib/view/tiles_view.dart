import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_flutter_app/view/tile_view.dart';
import 'package:my_first_flutter_app/view_model/tiles_provider.dart';

class TilesView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<int> numbers = ref.watch(tilesProvider);
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
        padding: const EdgeInsets.symmetric(vertical: 24),
        children: <Widget>[
          for (int i = 0; i < 9; i++)
            if (numbers[i] == 0)
              Container()
            else
              TileView(
                  number: numbers[i],
                  // 順番が正しい時はタイルの色を緑、間違っているときは青にする
                  color: numbers[i] == i + 1 ? Colors.green : Colors.blue,
                  onPressed: () => ref
                      .read(tilesProvider.notifier)
                      .swapTile(numbers, numbers[i]))
        ]);
  }
}
