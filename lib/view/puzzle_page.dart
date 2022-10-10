import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_flutter_app/view/tiles_view.dart';
import 'package:my_first_flutter_app/view_model/tiles_provider.dart';

class PuzzlePage extends ConsumerWidget {
  const PuzzlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Providerからタイルリストとシャッフルメソッドを取り出し
    List<int> numbers = ref.watch(tilesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('スライドパズル'),
        actions: [
          // 保存したタイルの状態を読み込むボタン
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
          ),

          // 現在のタイルの状態を保存するボタン
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Center(
        child: Center(
          child: TilesView(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            {ref.read(tilesProvider.notifier).shuffleTile(numbers)},
        child: const Icon(Icons.shuffle),
      ),
    );
  }
}
