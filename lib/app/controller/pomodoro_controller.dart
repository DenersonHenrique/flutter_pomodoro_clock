import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

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
  IntervalType intervalType = IntervalType.work;

  Timer? timer;

  @action
  void start() {
    initiated = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _chanceIntervalType();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    initiated = false;
    timer?.cancel();
  }

  @action
  void restart() {
    stop();
    minutes = isWork() ? workTime : pauseTime;
    seconds = 0;
  }

  @action
  void incrementWorkTime() {
    workTime++;
    if (isWork()) {
      restart();
    }
  }

  @action
  void decrementWorkTime() {
    if (workTime > 1) {
      workTime--;
      if (isWork()) {
        restart();
      }
    }
  }

  @action
  void incrementPauseTime() {
    pauseTime++;
    if (isPause()) {
      restart();
    }
  }

  @action
  void decrementPauseTime() {
    if (pauseTime > 1) {
      pauseTime--;
      if (isPause()) {
        restart();
      }
    }
  }

  bool isWork() => intervalType == IntervalType.work;

  bool isPause() => intervalType == IntervalType.pause;

  Color changeColor() =>
      isWork() ? const Color(0xFFF44336) : const Color(0xFF4CAF50);

  void _chanceIntervalType() {
    if (isWork()) {
      intervalType = IntervalType.pause;
      minutes = pauseTime;
    } else {
      intervalType = IntervalType.work;
      minutes = workTime;
    }
    seconds = 0;
  }
}
