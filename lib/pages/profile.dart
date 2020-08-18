import 'package:flutter/material.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/chat.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/leaderboard.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/recipes.dart';
import 'package:lose_de_fat_wireframes_flutter/widgets/fab_bottom_app_bar.dart';
import 'package:lose_de_fat_wireframes_flutter/widgets/nav_drawer.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  // Tab navigation
  int _currentIndex = 0;
  final List<Widget> _children = [
    StatsPage(),
    LeaderboardPage(),
    ChatPage(),
    RecipePage()
  ];

  void _selectedTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: NavDrawer(),
      body: _children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
              ),
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, top: 12, right: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.today),
                            hintText: 'Enter the date',
                            labelText: 'Date *',
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.fitness_center),
                            hintText: 'Enter the weight',
                            labelText: 'Weight *',
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () => Navigator.pop(context),
                          child: Icon(Icons.check),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        tooltip: 'Add New Weight',
        elevation: 2.0,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        selectedColor: Colors.black,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
          FABBottomAppBarItem(iconData: Icons.equalizer, text: 'Leaderboard'),
          FABBottomAppBarItem(iconData: Icons.chat, text: 'Chat'),
          FABBottomAppBarItem(iconData: Icons.restaurant_menu, text: 'Recipes'),
        ],
      ),
    );
  }
}

class StatsPage extends StatelessWidget {
  const StatsPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Banner(),
              SizedBox(height: 5),
              Chart(),
              SizedBox(height: 5),
              History(),
            ],
          ),
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              child: Text('JD'),
            ),
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.headline6,
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Icon(
        Icons.show_chart,
        size: 300,
      ),
    );
  }
}

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('April 01, 2020'), Text('102.5'), Icon(Icons.close)],
        ),
        Divider(thickness: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('April 10, 2020'), Text('101.5'), Icon(Icons.close)],
        ),
        Divider(thickness: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('April 20, 2020'), Text('100.5'), Icon(Icons.close)],
        ),
        Divider(thickness: 1),
      ],
    );
  }
}
