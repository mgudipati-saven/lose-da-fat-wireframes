import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: <Widget>[
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
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            'john.doe@gmail.com',
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            '15%',
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
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
    );
  }
}
