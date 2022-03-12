// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroController on _PomodoroControllerBase, Store {
  final _$initiatedAtom = Atom(name: '_PomodoroControllerBase.initiated');

  @override
  bool get initiated {
    _$initiatedAtom.reportRead();
    return super.initiated;
  }

  @override
  set initiated(bool value) {
    _$initiatedAtom.reportWrite(value, super.initiated, () {
      super.initiated = value;
    });
  }

  final _$minutesAtom = Atom(name: '_PomodoroControllerBase.minutes');

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  final _$secondsAtom = Atom(name: '_PomodoroControllerBase.seconds');

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  final _$workTimeAtom = Atom(name: '_PomodoroControllerBase.workTime');

  @override
  int get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  final _$pauseTimeAtom = Atom(name: '_PomodoroControllerBase.pauseTime');

  @override
  int get pauseTime {
    _$pauseTimeAtom.reportRead();
    return super.pauseTime;
  }

  @override
  set pauseTime(int value) {
    _$pauseTimeAtom.reportWrite(value, super.pauseTime, () {
      super.pauseTime = value;
    });
  }

  final _$intervalTypeAtom = Atom(name: '_PomodoroControllerBase.intervalType');

  @override
  IntervalType get intervalType {
    _$intervalTypeAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$intervalTypeAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  final _$_PomodoroControllerBaseActionController =
      ActionController(name: '_PomodoroControllerBase');

  @override
  void start() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.start');
    try {
      return super.start();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.restart');
    try {
      return super.restart();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.stop');
    try {
      return super.stop();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementWorkTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.incrementWorkTime');
    try {
      return super.incrementWorkTime();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementWorkTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.decrementWorkTime');
    try {
      return super.decrementWorkTime();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementPauseTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.incrementPauseTime');
    try {
      return super.incrementPauseTime();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementPauseTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.decrementPauseTime');
    try {
      return super.decrementPauseTime();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
initiated: ${initiated},
minutes: ${minutes},
seconds: ${seconds},
workTime: ${workTime},
pauseTime: ${pauseTime},
intervalType: ${intervalType}
    ''';
  }
}
