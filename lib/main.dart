import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                'assets/imagenes/134187.jpg',
                width: 150, // Tamaño reducido de la imagen
                height: 150,
              ),
              const SizedBox(height: 10),
              // Contenedor para ajustar el tamaño del texto "¡Diviértete!"
              const SizedBox(
                width: 230,
                height: 40,
                child: Center(
                  child: Text(
                    '¡Diviértete!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Botones
              const Padding(
                padding: EdgeInsets.only(right: 120), // Relleno a la derecha
                child: CustomButton(
                  icon: Icons.rocket, // Icono de cohete
                  text: 'Cuento 1',
                ),
              ),
              const SizedBox(height: 20), // Espacio vertical entre botones
              const Padding(
                padding: EdgeInsets.only(left: 140), // Relleno a la izquierda
                child: CustomButton(
                  icon: Icons.rocket, // Icono de cohete
                  text: 'Cuento 2',
                ),
              ),
              const SizedBox(height: 20), // Espacio vertical entre botones
              const Padding(
                padding: EdgeInsets.only(right: 120), // Relleno a la derecha
                child: CustomButton(
                  icon: Icons.rocket, // Icono de cohete
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

  const CustomButton({super.key, required this.icon, required this.text});

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
            const Color.fromARGB(174, 73, 147, 221),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.rotate(
              angle: 45 * 3.14159 / 180, // Convertir 45 grados a radianes
              child: Icon(
                icon, // Icono de cohete
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(
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
