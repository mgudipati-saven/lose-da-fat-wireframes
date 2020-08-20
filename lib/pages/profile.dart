import 'package:flutter/material.dart';

import '../widgets/simple_time_series_chart.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Progress',
            style: Theme.of(context).textTheme.headline5,
          ),
          Container(
            height: 200,
            child: SimpleTimeSeriesChart.withSampleData(),
          ),
          Text(
            'History',
            style: Theme.of(context).textTheme.headline5,
          ),
          Expanded(child: History()),
          FloatingActionButton(
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
        ],
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
        size: 250,
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
        Divider(thickness: 1),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('April 20, 2020'), Text('100.5'), Icon(Icons.close)],
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
