import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/splash_screen.dart';
import 'package:task_manager/ui/utils/app_colors.dart';

class TaskManagerApp extends StatefulWidget {
  const TaskManagerApp({super.key});

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
          textTheme: const TextTheme(),
          inputDecorationTheme: _inputDecorationTheme(),
        elevatedButtonTheme: _elevatedButtonThemeData(),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

  ElevatedButtonThemeData _elevatedButtonThemeData(){
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.themeColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 10,

          ),
          fixedSize: const Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )

      ),
    );
  }

  InputDecorationTheme _inputDecorationTheme(){
    return InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w300
      ),
      border: _inputBorder(),
      enabledBorder: _inputBorder(),
      errorBorder: _inputBorder(),
      focusedBorder: _inputBorder(),
    );
  }


  OutlineInputBorder _inputBorder(){
    return OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
    );
  }



}
