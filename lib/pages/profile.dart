import 'package:flutter/material.dart';
import 'package:lose_de_fat_wireframes_flutter/pages/widgets/fab_bottom_app_bar.dart';

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
    Container()
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
          FABBottomAppBarItem(iconData: Icons.restaurant_menu, text: 'Recipe'),
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

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DrawerHeader(
              child: Center(
                child: Text(
                  'Image',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.popAndPushNamed(context, '/profile')},
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text('Profile'),
            onTap: () => {Navigator.popAndPushNamed(context, '/contest')},
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.question_answer),
            title: Text('FAQ'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.comment),
            title: Text('Comment'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.person_outline,
                size: 100,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'John Doe',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 5),
          Text(
            'john.doe@gmail.com',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(height: 5),
          Text(
            '15%',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('2nd'),
                    Icon(Icons.arrow_drop_up),
                    SizedBox(width: 5),
                    CircleAvatar(child: Icon(Icons.person)),
                  ],
                ),
                title: Text('John Doe'),
                subtitle: Text('john.doe@gmail.com'),
                trailing: Text('9.5%'),
                onTap: () => {Navigator.of(context).pushNamed('/profile')},
              ),
              ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('3nd'),
                    Icon(Icons.arrow_drop_down),
                    SizedBox(width: 5),
                    CircleAvatar(child: Icon(Icons.person)),
                  ],
                ),
                title: Text('John Doe'),
                subtitle: Text('john.doe@gmail.com'),
                trailing: Text('9%'),
                onTap: () => {Navigator.of(context).pushNamed('/profile')},
              ),
              ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('4th'),
                    Icon(Icons.arrow_drop_up),
                    SizedBox(width: 5),
                    CircleAvatar(child: Icon(Icons.person)),
                  ],
                ),
                title: Text('John Doe'),
                subtitle: Text('john.doe@gmail.com'),
                trailing: Text('8%'),
                onTap: () => {Navigator.of(context).pushNamed('/profile')},
              ),
              ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('5th'),
                    Icon(Icons.arrow_drop_down),
                    SizedBox(width: 5),
                    CircleAvatar(child: Icon(Icons.person)),
                  ],
                ),
                title: Text('John Doe'),
                subtitle: Text('john.doe@gmail.com'),
                trailing: Text('7%'),
                onTap: () => {Navigator.of(context).pushNamed('/profile')},
              ),
              ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('6th'),
                    Icon(Icons.arrow_drop_up),
                    SizedBox(width: 5),
                    CircleAvatar(child: Icon(Icons.person)),
                  ],
                ),
                title: Text('John Doe'),
                subtitle: Text('john.doe@gmail.com'),
                trailing: Text('6%'),
                onTap: () => {Navigator.of(context).pushNamed('/profile')},
              ),
              ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('7th'),
                    Icon(Icons.arrow_drop_up),
                    SizedBox(width: 5),
                    CircleAvatar(child: Icon(Icons.person)),
                  ],
                ),
                title: Text('John Doe'),
                subtitle: Text('john.doe@gmail.com'),
                trailing: Text('7%'),
                onTap: () => {Navigator.of(context).pushNamed('/profile')},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Row(
                children: [
                  CircleAvatar(child: Text('JD')),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('Hi, How are you? Ready to lose some weight?'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Hi, I am fine. I am ready to lose some weight.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(child: Text('JD')),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                        'That is great! Let us get started with some exercises and diet plans.'),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.face),
              SizedBox(width: 10),
              Expanded(child: Text('Type a message')),
              Icon(Icons.send),
            ],
          )
        ],
      ),
    );
  }
}
