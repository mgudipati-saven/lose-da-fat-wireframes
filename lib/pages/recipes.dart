import 'package:flutter/material.dart';
import 'package:lose_de_fat_wireframes_flutter/widgets/recipe_card.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 30,
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Text(
                  'Breakfast',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Container(
                height: 30,
                child: Text(
                  'Lunch',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.grey),
                ),
              ),
              Container(
                height: 30,
                child: Text(
                  'Dinner',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.grey),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                RecipeCard(
                  name: 'Oatmeal with Fruits',
                  duration: '0:15',
                  imageURL:
                      'https://images.unsplash.com/photo-1517673400267-0251440c45dc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f197f4922b3f26ed3f4e3e66a113b67b&auto=format&fit=crop&w=1050&q=80',
                  inFavorites: true,
                ),
                RecipeCard(
                  name: 'Pancakes with Maple Syrup',
                  duration: '0:20',
                  imageURL:
                      'https://images.unsplash.com/photo-1517741991040-91338b176129?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f65c4032c1b3131f829d464fb979f5e8&auto=format&fit=crop&w=675&q=80',
                  inFavorites: false,
                ),
                RecipeCard(
                  name: 'Strawberry Juice',
                  duration: '0:10',
                  imageURL:
                      'https://images.unsplash.com/photo-1506802913710-40e2e66339c9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c8ffc5bbb3719b5a46ee703acb0a0ac5&auto=format&fit=crop&w=634&q=80',
                  inFavorites: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
