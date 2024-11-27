import 'package:flutter/material.dart';

class GameDetails extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String price;
  
  
  const GameDetails({super.key,required this.title,required this.image, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              //'Assets/iceroad.jpg',
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            const SizedBox(height: 40),
            
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            
            const SizedBox(height: 30),

            // Price and Buy button
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Action for the buy button
                    },
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text('Acheter'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}