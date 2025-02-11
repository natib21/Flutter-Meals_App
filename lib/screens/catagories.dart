import 'package:flutter/material.dart';
import 'package:meals_app_flutter/data/dummy_data.dart';
import 'package:meals_app_flutter/widgets/category_grid_item.dart';

class CatagoriesScreen extends StatelessWidget {
  CatagoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pick Your Category'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            for (final category in availableCategories)
              categoryGridItem(
                category: category,
              )
          ],
        ));
  }
}
