import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String bodyText;
  const CardWidget({super.key, required this.title, required this.subtitle, required this.bodyText});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Header
          ListTile(
            leading: Icon(Icons.person, size: 50),
            title: Text(title,
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(subtitle),
          ),
          // Body
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(bodyText),
          ),
          // Footer
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('ACTION 1'),
                onPressed: () {
                  // Action 1
                },
              ),
              TextButton(
                child: const Text('ACTION 2'),
                onPressed: () {
                  // Action 2
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
