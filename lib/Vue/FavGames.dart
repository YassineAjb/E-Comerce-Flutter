import 'package:flutter/material.dart';
import 'package:workshop1/GameCard.dart';
import 'package:workshop1/Vue/GameDetails.dart';

class FavGames extends StatelessWidget {
  const FavGames({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          InkWell(
            child: FavCard(
              imageUrl: 'Assets/HouseOfDead.jpg',
              title: 'House of Dead',
            ),
          ),
          InkWell(
            child: FavCard(
              imageUrl: 'Assets/thegrudge.jpg',
              title: 'The Grudge',
            ),
          ),
          InkWell(
            child: FavCard(
              imageUrl: 'Assets/theabyss.jpg',
              title: 'The Abyss',
            ),
          ),
        ],
      ),
    );
  }
}





class FavCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const FavCard({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 6,
      child: Row(
        children: [
          // Image section
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: 150,
              height: 100,
            ),
          ),

          // Title and button section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis, // Avoid text overflow
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red, // Set the color of the icon to red
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 10), // Spacing at the end (optional)
        ],
      ),
    );
  }
}
