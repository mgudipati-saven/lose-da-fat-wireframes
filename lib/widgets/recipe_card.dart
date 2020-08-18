import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final bool inFavorites;
  final String imageURL;
  final String name;
  final String duration;

  RecipeCard({
    @required this.name,
    @required this.duration,
    @required this.inFavorites,
    @required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    RawMaterialButton _buildFavoriteButton() {
      return RawMaterialButton(
        constraints: const BoxConstraints(minWidth: 40.0, minHeight: 40.0),
        onPressed: () => {},
        child: Icon(
          inFavorites == true ? Icons.favorite : Icons.favorite_border,
        ),
        elevation: 2.0,
        fillColor: Colors.white,
        shape: CircleBorder(),
      );
    }

    Padding _buildTitleSection() {
      return Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(name),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(Icons.timer, size: 20.0),
                SizedBox(width: 5.0),
                Text(duration),
              ],
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: Image.network(
                      imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: _buildFavoriteButton(),
                    top: 2.0,
                    right: 2.0,
                  ),
                ],
              ),
              _buildTitleSection(),
            ],
          ),
        ),
      ),
    );
  }
}
