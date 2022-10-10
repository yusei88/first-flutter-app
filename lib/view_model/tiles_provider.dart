import 'package:flutter_riverpod/flutter_riverpod.dart';

class TilesNotifier extends StateNotifier<List<int>> {
  // Tileのリストを初期化
  TilesNotifier() : super([6, 7, 8, 1, 2, 3, 4, 5, 0]);

  /// タイル交換メソッド
  /// 引数 List<int>型：現在のタイル
  /// 引数 int型：交換するタイルの数字
  void swapTile(List<int> numbers, int number) {
    // タップしたタイルと空白が隣り合っている場合のみ入れ替え
    if (canSwapTile(numbers, number)) {
      final indexOfTile = numbers.indexOf(number);
      final indexOfEmpty = numbers.indexOf(0);
      numbers[indexOfTile] = 0;
      numbers[indexOfEmpty] = number;
      state = [...numbers];
    }
  }

  /// タイルが交換可能か判定するメソッド
  /// 引数 List<int>型：現在のタイル
  /// 引数 int型：交換するタイルの数字
  bool canSwapTile(List<int> numbers, int number) {
    final indexOfTile = numbers.indexOf(number);
    final indexOfEmpty = numbers.indexOf(0);

    // タイルと空タイルが隣会っているかによって判定
    switch (indexOfEmpty) {
      case 0:
        return [1, 3].contains(indexOfTile);
      case 1:
        return [0, 2, 4].contains(indexOfTile);
      case 2:
        return [1, 5].contains(indexOfTile);
      case 3:
        return [0, 4, 6].contains(indexOfTile);
      case 4:
        return [1, 3, 5, 7].contains(indexOfTile);
      case 5:
        return [2, 4, 8].contains(indexOfTile);
      case 6:
        return [3, 7].contains(indexOfTile);
      case 7:
        return [4, 6, 8].contains(indexOfTile);
      case 8:
        return [5, 7].contains(indexOfTile);
      default:
        return false;
    }
  }

  /// タイルシャッフルメソッド
  /// 引数 List<int>型：現在のタイル
  void shuffleTile(List<int> numbers) {
    numbers.shuffle();
    state = [...numbers];
  }
}

final tilesProvider = StateNotifierProvider<TilesNotifier, List<int>>((ref) {
  return TilesNotifier();
});
