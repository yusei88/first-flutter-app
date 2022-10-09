import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/view/tile_view.dart';

class TilesView extends StatelessWidget {
  const TilesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 24,
      mainAxisSpacing: 24,
      padding: const EdgeInsets.symmetric(vertical: 24),
      children: [
        TileView(number: 1, color: Colors.blue, onPressed: () {}),
        TileView(number: 2, color: Colors.blue, onPressed: () {}),
        TileView(number: 3, color: Colors.blue, onPressed: () {}),
        TileView(number: 4, color: Colors.blue, onPressed: () {}),
        TileView(number: 5, color: Colors.blue, onPressed: () {}),
        TileView(number: 6, color: Colors.blue, onPressed: () {}),
        TileView(number: 7, color: Colors.blue, onPressed: () {}),
        TileView(number: 8, color: Colors.blue, onPressed: () {}),
        Container(),
      ],
    );
  }
}
