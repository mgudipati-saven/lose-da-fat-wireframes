import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InviteFriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Invite Friends')),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlineButton.icon(
                icon: Icon(FontAwesomeIcons.whatsapp),
                onPressed: () {},
                label: Text(
                  'Whatsapp Friends',
                ),
                borderSide: BorderSide(
                    style: BorderStyle.solid, width: 3, color: Colors.grey),
              ),
              OutlineButton.icon(
                icon: Icon(FontAwesomeIcons.facebook),
                onPressed: () {},
                label: Text('Facebook Friends'),
                borderSide: BorderSide(
                    style: BorderStyle.solid, width: 3, color: Colors.grey),
              ),
              OutlineButton.icon(
                icon: Icon(FontAwesomeIcons.envelope),
                onPressed: () {},
                label: Text('Email Friends'),
                borderSide: BorderSide(
                    style: BorderStyle.solid, width: 3, color: Colors.grey),
              ),
              OutlineButton.icon(
                icon: Icon(FontAwesomeIcons.twitter),
                onPressed: () {},
                label: Text('Twitter Friends'),
                borderSide: BorderSide(
                    style: BorderStyle.solid, width: 3, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
