import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FractionallySizedBox(
          widthFactor: 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Logo',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              SizedBox(height: 50),
              OutlineButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: Text(
                  'Signon with Google',
                  style: Theme.of(context).textTheme.button,
                ),
                borderSide: BorderSide(style: BorderStyle.solid, width: 2),
              ),
              OutlineButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: Text(
                  'Signon with Facebook',
                  style: Theme.of(context).textTheme.button,
                ),
                borderSide: BorderSide(style: BorderStyle.solid, width: 2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
