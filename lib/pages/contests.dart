import 'package:flutter/material.dart';
import 'package:lose_de_fat_wireframes_flutter/widgets/nav_drawer.dart';

class ContestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('John Doe'),
        actions: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              })
        ],
      ),
      drawer: NavDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                _buildActiveContestCard(context),
                _buildCompletedContestCard(context),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/contest/add'),
        child: Icon(Icons.add),
      ),
    );
  }

  GestureDetector _buildCompletedContestCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/contest');
      },
      child: Card(
        color: Colors.grey.shade100,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(
                'Completed Contest Name',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'March 01, 2020',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.red,
                  ),
                  SizedBox(width: 15.0),
                  Text(
                    '+10.5lb',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(width: 15.0),
                  Text(
                    '+3.5%',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _buildActiveContestCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/contest');
      },
      child: Card(
        color: Colors.green.shade100,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(
                'Active Contest Name',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'September 01, 2020',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.green,
                  ),
                  SizedBox(width: 15.0),
                  Text(
                    '-3.5lb',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(width: 15.0),
                  Text(
                    '-1.5%',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
