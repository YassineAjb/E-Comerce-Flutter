import 'package:flutter/material.dart';
import 'package:workshop1/Vue/FavGames.dart';
import 'package:workshop1/Vue/Games.dart';

class TapBarNavigation extends StatefulWidget {
  const TapBarNavigation({super.key});

  @override
  _TapBarNavigationState createState() => _TapBarNavigationState();
}

class _TapBarNavigationState extends State<TapBarNavigation> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with the number of tabs
    _tabController = TabController(length: 3, vsync: this); // 3 tabs here
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ajbouni App'),
          centerTitle: true,
          //toolbarHeight: 0,
          backgroundColor: Color.fromARGB(255, 145, 145, 145),
          bottom: TabBar(
            controller: _tabController, // Assign the controller to TabBar
            tabs: const [
              Tab(icon: Icon(Icons.home), text: 'Games'),
              Tab(icon: Icon(Icons.bookmark), text: 'Favorites'),
              Tab(icon: Icon(Icons.shopping_basket), text: 'Basket'),
            ],
          ),
        ),
        drawer: Drawer( // Adding the Drawer
          child: ListView(
            padding: EdgeInsets.zero, // Remove default padding
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pushNamed(context, '/settings');
                  Navigator.pop(context); // Close the drawer after selection
                },
              ),
              ListTile(
                title: const Text('Log Out'),
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                  Navigator.pop(context); // Close the drawer after selection
                },
              ),
              // Add more ListTiles for additional options
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController, // Assign the controller to TabBarView
          children:  [
            Games(tabController: _tabController), // Pass the TabController
            //Games(),
            const FavGames(),
            const Center(child: Text('Ajbouni-Yassine')),
          ],
        ),
      ),
    );
  }
}
