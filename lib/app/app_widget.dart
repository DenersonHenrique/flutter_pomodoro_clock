import 'pages/pomodoro_page.dart';
import 'constants/app_string.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/pomodoro_controller.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroController>(
          create: (_) => PomodoroController(),
        ),
      ],
      child: MaterialApp(
        title: AppString.appTitle,
        home: const PomodoroPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
