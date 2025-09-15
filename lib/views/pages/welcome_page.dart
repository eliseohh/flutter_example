import 'package:cuestionario_licencia_clase_b_y_c/views/widget_tree.dart';
import 'package:cuestionario_licencia_clase_b_y_c/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // <- evita overflow
            children: [
              HeroWidget(),
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetTree()),
                  );
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text("Get Started"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
