import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Imagen central
              Image.asset(
                'assets/images/baymaxface.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              // Botones
              Padding(
                padding: EdgeInsets.only(right: 120), // Relleno a la derecha
                child: CustomButton(
                  icon: Icons.book,
                  text: 'Cuento 1',
                ),
              ),
              SizedBox(height: 20), // Espacio vertical entre botones
              Padding(
                padding: EdgeInsets.only(
                    left: 140), // Relleno a la izquierda y a la derecha
                child: CustomButton(
                  icon: Icons.book,
                  text: 'Cuento 2',
                ),
              ),
              SizedBox(height: 20), // Espacio vertical entre botones
              Padding(
                padding: EdgeInsets.only(right: 120), // Relleno a la izquierda
                child: CustomButton(
                  icon: Icons.book,
                  text: 'Cuento 3',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  CustomButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: ElevatedButton(
        onPressed: () {
          // Acción cuando se presiona el botón
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(174, 73, 147, 221),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 60,
              color: Colors.white,
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
