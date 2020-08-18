import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                'Contests',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
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
    );
  }

  GestureDetector _buildCompletedContestCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/profile');
      },
      child: Card(
        color: Colors.grey.shade100,
        child: Padding(
          padding: EdgeInsets.all(15.0),
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
        Navigator.pushNamed(context, '/profile');
      },
      child: Card(
        color: Colors.green.shade100,
        child: Padding(
          padding: EdgeInsets.all(15.0),
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
