import 'package:cuestionario_licencia_clase_b_y_c/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.all(20.0), 
    child: Column(
      children: [
        HeroWidget(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Bienvenido a la aplicación de cuestionarios para la licencia de conducir clase B y C. Aquí encontrarás una variedad de preguntas diseñadas para ayudarte a prepararte para tu examen de manejo. ¡Buena suerte!',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
