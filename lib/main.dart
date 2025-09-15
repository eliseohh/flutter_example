import 'package:cuestionario_licencia_clase_b_y_c/data/notifiers.dart';
import 'package:cuestionario_licencia_clase_b_y_c/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder:(ctx, isDarkMode, child) {
          return MaterialApp(
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.teal,
                brightness: isDarkMode ? Brightness.dark : Brightness.light,
              ),
            ),
            home: WelcomePage(),
          );
        }
    );
  }
}
