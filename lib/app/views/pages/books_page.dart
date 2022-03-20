import 'package:flutter/material.dart';

import 'package:flutterassignment/app/models/items_model.dart';
import 'package:flutterassignment/app/views/widgets/custom_item_books.dart';

class TabOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OrientationBuilder(builder: (context, orientation) {
          return GridView.builder(
            // shrinkWrap: true,
            itemCount: ItemsModel.books.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // mainAxisSpacing: 8,
                // crossAxisSpacing: 2,
                childAspectRatio: orientation == Orientation.portrait
                    ? MediaQuery.of(context).size.width < 400
                        ? 0.83
                        : 0.92
                    : 1.4),
            itemBuilder: (context, index) => CustomItemsUI(
              index: index,
            ),
          );
        }),
      ],
    );
  }
}
