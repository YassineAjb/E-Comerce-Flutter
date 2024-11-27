
import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const GameCard({
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
      child: Column(
        children: [
          // Image section
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),

          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
            
                // Favorite icon
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          // Title section
          
        ],
      ),
    );
  }
}
