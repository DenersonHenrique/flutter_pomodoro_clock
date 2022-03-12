import 'package:flutter/material.dart';

class TimerButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const TimerButtonWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 20.0,
          ),
          textStyle: const TextStyle(fontSize: 25.0),
        ),
        onPressed: () {},
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                icon,
                size: 35.0,
              ),
            ),
            Text(text),
          ],
        ),
      );
}
