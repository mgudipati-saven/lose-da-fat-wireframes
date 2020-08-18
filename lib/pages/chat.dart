import 'package:flutter/material.dart';

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
              SizedBox(height: 20),
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
              SizedBox(height: 20),
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
