import '../constants/app_string.dart';
import '../widgets/timer_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/time_entry_widget.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            child: TimerWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TimeEntry(
                  value: 25,
                  title: AppString.workTime,
                ),
                TimeEntry(
                  value: 5,
                  title: AppString.pauseTime,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
