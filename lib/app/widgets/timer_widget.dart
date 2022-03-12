import 'timer_button_widget.dart';
import '../constants/app_string.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/pomodoro_controller.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<PomodoroController>(context);

    return Container(
      color: controller.isWork()
          ? const Color(0xFFF44336)
          : const Color(0xFF4CAF50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            controller.isWork()
                ? AppString.timeWorkLabel
                : AppString.timePauseLabel,
            style: const TextStyle(
              fontSize: 40.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            '${controller.minutes.toString().padLeft(2, '0')}:${controller.seconds.toString().padLeft(2, '0')}',
            style: const TextStyle(
              fontSize: 120.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20.0),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (!controller.initiated)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: TimerButtonWidget(
                      text: AppString.startLabel,
                      icon: Icons.play_arrow,
                      onClick: controller.start,
                    ),
                  ),
                if (controller.initiated)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: TimerButtonWidget(
                      text: AppString.stopLabel,
                      icon: Icons.stop,
                      onClick: controller.stop,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TimerButtonWidget(
                    text: AppString.restartLabel,
                    icon: Icons.refresh,
                    onClick: controller.restart,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
