import 'package:flutter/material.dart';
import 'package:meals_app_flutter/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  MealDetailsScreen({super.key, required this.meals});

  final Meal meals;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meals.title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meals.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Ingredients",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            ...meals.ingredients
                .map((el) => Text(el,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground)))
                .toList(),
            SizedBox(
              height: 24,
            ),
            Text(
              "Steps",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            ...meals.steps.map((el) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(el,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground)),
                ))
          ],
        ),
      ),
    );
  }
}
