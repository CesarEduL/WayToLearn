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
              CustomButton(
                image:
                    'assets/images/booksolid.png',
                text: 'Cuento 1',
              ),
              SizedBox(height: 10),
              CustomButton(
                image:
                    'assets/images/booksolid.png',
                text: 'Cuento 2',
              ),
              SizedBox(height: 10),
              CustomButton(
                image:
                    'assets/images/booksolid.png',
                text: 'Cuento 3',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String image;
  final String text;

  CustomButton({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: ElevatedButton(
        onPressed: () {
          // Acción cuando se presiona el botón
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(174, 73, 147, 221)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              width: 80,
              height: 80,
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
