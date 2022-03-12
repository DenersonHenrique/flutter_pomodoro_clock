import 'timer_button_widget.dart';
import '../constants/app_string.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hora de trabalhar',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              '00:00',
              style: TextStyle(
                fontSize: 120.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: TimerButtonWidget(
                    text: AppString.startLabel,
                    icon: Icons.play_arrow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: TimerButtonWidget(
                    text: AppString.stopLabel,
                    icon: Icons.stop,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TimerButtonWidget(
                    text: AppString.restartLabel,
                    icon: Icons.refresh,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
