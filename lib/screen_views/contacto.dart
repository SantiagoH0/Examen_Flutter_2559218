import 'package:flutter/material.dart';
import 'package:examen/theme/app_theme.dart';
import 'package:examen/screen_views/clases.dart';

class Contacto extends StatefulWidget {
  const Contacto({Key? key}) : super(key: key);

  @override
  State<Contacto> createState() => _ContactoState();
}

class _ContactoState extends State<Contacto> {

  
  final TextEditingController correoController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController celularController = TextEditingController();


  void calcular(){

    String correo = correoController.text;

    String nombre = nombreController.text;

    String celular_ = celularController.text;
    int celular = int.parse(celular_);
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.primary,
          title: const Text('Contacto') ,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuInput(
                textStyle: const TextStyle(color: AppTheme.primary),
                controller: nombreController,
                inputDecoration: InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  icon: const Icon (Icons.brightness_1, color: AppTheme.primary),
                  floatingLabelStyle: const TextStyle(color: AppTheme.primary), // Añadir esto
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).secondaryHeaderColor), // Acceder a secondaryHeaderColor del ThemeData
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor), // Acceder a primaryColor del ThemeData
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Theme.of(context).inputDecorationTheme.fillColor, // Acceder a fillColor del InputDecorationTheme
                ), // Acceder a fillColor
              ),
              const SizedBox(height: 20),
              MenuInput(
                textStyle: const TextStyle(color: AppTheme.primary),
                controller: correoController,
                inputDecoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Ingrese su email',
                  icon: const Icon (Icons.brightness_1, color: AppTheme.primary),
                  floatingLabelStyle: const TextStyle(color: AppTheme.primary), // Añadir esto
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).secondaryHeaderColor), // Acceder a secondaryHeaderColor del ThemeData
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor), // Acceder a primaryColor del ThemeData
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Theme.of(context).inputDecorationTheme.fillColor, // Acceder a fillColor del InputDecorationTheme
                ), // Acceder a fillColor
              ),
              const SizedBox(height: 20),
              MenuInput(
                textStyle: const TextStyle(color: AppTheme.primary),
                controller: celularController,
                inputDecoration: InputDecoration(
                  labelText: 'Celular',
                  hintText: 'Ingrese el celular',
                  icon: const Icon (Icons.brightness_1, color: AppTheme.primary),
                  floatingLabelStyle: const TextStyle(color: AppTheme.primary), // Añadir esto
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).secondaryHeaderColor), // Acceder a secondaryHeaderColor del ThemeData
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor), // Acceder a primaryColor del ThemeData
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Theme.of(context).inputDecorationTheme.fillColor, // Acceder a fillColor del InputDecorationTheme
                ), // Acceder a fillColor
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                ),
                onPressed: (){
                  calcular();
                },
                child: const Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}