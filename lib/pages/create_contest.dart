import 'package:flutter/material.dart';

class CreateContest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create a Contest')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  icon: Icon(Icons.schedule),
                  hintText: 'Enter weekly weigh-in',
                  labelText: 'Weigh-In Frequency *',
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
            ],
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => Navigator.pop(context),
            child: Icon(Icons.check),
          ),
        ],
      ),
    );
  }
}
