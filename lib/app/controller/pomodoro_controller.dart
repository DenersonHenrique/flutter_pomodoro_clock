import 'package:mobx/mobx.dart';
part 'pomodoro_controller.g.dart';

class PomodoroController = _PomodoroControllerBase with _$PomodoroController;

enum IntervalType { work, pause }

abstract class _PomodoroControllerBase with Store {
  @observable
  bool initiated = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workTime = 2;

  @observable
  int pauseTime = 1;

  @observable
  IntervalType intervalType = IntervalType.pause;

  @action
  void start() => initiated = true;

  @action
  void restart() => initiated = false;

  @action
  void stop() => initiated = true;

  @action
  void incrementWorkTime() => workTime++;

  @action
  void decrementWorkTime() => workTime--;

  @action
  void incrementPauseTime() => pauseTime++;

  @action
  void decrementPauseTime() => pauseTime--;

  bool isWork() => intervalType == IntervalType.work;

  bool isPause() => intervalType == IntervalType.pause;
}
