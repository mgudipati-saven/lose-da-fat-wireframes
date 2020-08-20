import 'package:flutter/material.dart';

import '../widgets/nav_drawer.dart';

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
        onPressed: () => {
          showModalBottomSheet<void>(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
              ),
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.title),
                          hintText: 'Enter the contest name',
                          labelText: 'Contest Name *',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.today),
                          hintText: 'Enter the start date',
                          labelText: 'Start Date *',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.repeat_one),
                          hintText: 'Enter the duration in weeks',
                          labelText: 'Duration (weeks) *',
                        ),
                        value: '4',
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (String newValue) {},
                        items: <String>['4', '6', '8', '10', '12']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.schedule),
                          hintText: 'Enter weekly weigh-in',
                          labelText: 'Weigh-In Frequency *',
                        ),
                        value: 'Saturday, 1 PM',
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (String newValue) {},
                        items: <String>[
                          'Saturday, 1 PM',
                          'Monday 1 PM',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 10),
                      FloatingActionButton(
                        onPressed: () => Navigator.pop(context),
                        child: Icon(Icons.check),
                      ),
                    ],
                  ),
                );
              }),
        },
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
