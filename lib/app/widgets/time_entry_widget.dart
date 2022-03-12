import 'package:flutter/material.dart';

class TimeEntry extends StatelessWidget {
  final int value;
  final String title;

  const TimeEntry({
    required this.value,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.remove,
                  color: Color(0xFFFFFFFF),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15.0),
                  primary: const Color(0xFFF44336),
                ),
              ),
              Text(
                '$value min',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  color: Color(0xFFFFFFFF),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15.0),
                  primary: const Color(0xFFF44336),
                ),
              ),
            ],
          ),
        ],
      );
}
