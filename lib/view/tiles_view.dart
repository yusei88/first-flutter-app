import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/view/tile_view.dart';

class TilesView extends StatelessWidget {
  final List<int> numbers;

  const TilesView({
    Key? key,
    required this.numbers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                color: numbers[i] == i+1 ? Colors.green : Colors.blue,
                onPressed: () {},
              )
        ]);
  }
}
