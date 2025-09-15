import 'package:cuestionario_licencia_clase_b_y_c/data/notifiers.dart';
import 'package:cuestionario_licencia_clase_b_y_c/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(20.0),
      child: 
        Column(children: [
          ListTile(
            title: Text("Logout"),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
            },
            )
        ],
      ),
    );
  }
}
