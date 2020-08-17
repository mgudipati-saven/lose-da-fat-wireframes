import 'package:flutter/material.dart';

class CreateContest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create a Contest')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  'Image',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
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
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.repeat_one),
                hintText: 'Enter the duration in weeks',
                labelText: 'Duration *',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.schedule),
                hintText: 'Enter weekly weigh-in',
                labelText: 'Weigh-In Frequency *',
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
  }
}
