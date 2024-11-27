import 'package:flutter/material.dart';
import 'package:workshop1/GameCard.dart';
import 'package:workshop1/Vue/GameDetails.dart';

class Games extends StatelessWidget {
  //const Games({super.key});

  final TabController tabController;

  const Games({super.key, required this.tabController});

  void _onCardTap(BuildContext context, String gameTitle,String gameImage,String gameDescription,String gamePrice) {
    // Show a snackbar or navigate to a new screen when the card is tapped
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(content: Text('You tapped on $gameTitle!')),
    //);

    // You could also navigate to another screen:
     Navigator.push(context, MaterialPageRoute(builder: (context) => GameDetails(title: gameTitle, image: gameImage, description: gameDescription, price: gamePrice,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Games'),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.bookmark,color: Colors.blueAccent,), // Bookmark icon
      //       onPressed: () {
      //         //Navigator.pushNamed(context, '/');
      //         //DefaultTabController.of(context).animateTo(1);
      //         tabController.animateTo(1);
      //       },
      //     ),
      //   ],
      // ),
        body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          InkWell(
            onTap: () => _onCardTap(context, 'House of Dead','Assets/HouseOfDead.jpg',
            'The House of the Dead and its 2022 remake take place in 1998, following AMS agents Thomas Rogan and G as they raid the mansion of Dr. Curien, a genetic engineer who went insane and has released creatures upon his own research team.','120'),
            child: const GameCard(
              imageUrl: 'Assets/HouseOfDead.jpg',
              title: 'House of Dead',
            ),
          ),
          InkWell(
            onTap: () => _onCardTap(context, 'The Grudge','Assets/thegrudge.jpg','The House of the Dead and its 2022 remake take place in 1998, following AMS agents Thomas Rogan and G as they raid the mansion of Dr. Curien, a genetic engineer who went insane and has released creatures upon his own research team.','299'),
            child: const GameCard(
              imageUrl: 'Assets/thegrudge.jpg',
              title: 'The Grudge',
            ),
          ),
          InkWell(
            onTap: () => _onCardTap(context, 'The Abyss','Assets/theabyss.jpg','The House of the Dead and its 2022 remake take place in 1998, following AMS agents Thomas Rogan and G as they raid the mansion of Dr. Curien, a genetic engineer who went insane and has released creatures upon his own research team.','275'),
            child: const GameCard(
              imageUrl: 'Assets/theabyss.jpg',
              title: 'The Abyss',
            ),
          ),
          InkWell(
            onTap: () => _onCardTap(context, 'IceRoad','Assets/iceroad.jpg','The House of the Dead and its 2022 remake take place in 1998, following AMS agents Thomas Rogan and G as they raid the mansion of Dr. Curien, a genetic engineer who went insane and has released creatures upon his own research team.','250'),
            child: const GameCard(
              imageUrl: 'Assets/iceroad.jpg',
              title: 'IceRoad',
            ),
          ),
        ],
      ),
    );
  }
}
