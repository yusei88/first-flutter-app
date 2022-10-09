import 'package:flutter/material.dart';

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({Key? key}) : super(key: key);

  @override
  _PuzzlePageState createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  // 現在のタイルの状態
  List<int> tileNumbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スライドパズル'),
      ),
      body: const Text('メインコンテンツ'),
    );
  }
}
