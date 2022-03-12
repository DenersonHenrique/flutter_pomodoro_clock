import '../constants/app_string.dart';
import '../widgets/timer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/time_entry_widget.dart';
import '../controller/pomodoro_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<PomodoroController>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            child: TimerWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TimeEntry(
                    value: controller.workTime,
                    title: AppString.workTime,
                    decrement: controller.decrementWorkTime,
                    increment: controller.incrementWorkTime,
                  ),
                  TimeEntry(
                    value: controller.pauseTime,
                    title: AppString.pauseTime,
                    decrement: controller.decrementPauseTime,
                    increment: controller.incrementPauseTime,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
