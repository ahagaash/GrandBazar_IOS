import 'package:flutter/material.dart';

import '../../Models/bazarEvents.dart';

class BazarTalkCard extends StatelessWidget {
  const BazarTalkCard(
      {Key? key, required this.events, required BazarEvents event})
      : super(key: key);

  final BazarEvents events;

  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset('assets/grandbazaarLogo.png'),
          ListTile(
            title: const Text(
              'Bazar Talk',
              style: TextStyle(color: Color.fromARGB(255, 157, 155, 155)),
            ),
            subtitle: Text(
              events.title,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300, bottom: 100),
            child: Text(
              '2023-10-11',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              events.description,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
        ],
      ),
    );
  }
}
