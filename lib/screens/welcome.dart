import 'package:flutter/material.dart';
import 'package:wsp/screens/login.dart';
import 'package:wsp/widgets/buttonP.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).colorScheme.onPrimary,
            //color: Color.fromRGBO(7, 41, 28, .96),
          ),
          Opacity(
            opacity: 0.5,

            child: Center(
              child: Image.asset(
                "assets/logo_lince.webp",
                fit: BoxFit.contain,
                width: 350,
                height: 350,
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "¡ Bienvenido !",
                    style: TextStyle(
                      color: Color.fromRGBO(7, 41, 28, .96),
                      fontFamily: 'Nanito',
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),

                  SizedBox(height: 60),

                  ButtonP(
                    text: "Ingresar",
                    backgroundColor: Color.fromRGBO(7, 41, 28, .96),
                    textColor: Colors.white,
                    height: 65,
                    fontSize: 20,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  ButtonP(
                    text: "Regístrate",
                    backgroundColor: Color.fromRGBO(7, 41, 28, .96),
                    textColor: Colors.white,
                    height: 65,
                    fontSize: 20,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
