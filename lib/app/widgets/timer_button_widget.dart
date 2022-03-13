import 'package:flutter/material.dart';

class TimerButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onClick;

  const TimerButtonWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF000000),
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 20.0,
          ),
          textStyle: TextStyle(
            fontSize: 15 * MediaQuery.of(context).textScaleFactor,
          ),
          fixedSize: Size(
            MediaQuery.of(context).size.width * 0.4,
            MediaQuery.of(context).size.height * 0.1,
          ),
        ),
        onPressed: onClick,
        icon: Icon(
          icon,
          size: 18 * MediaQuery.of(context).textScaleFactor,
        ),
        label: Text(text),
      );
}
