import 'package:flutter/material.dart';
import 'package:examen/theme/app_theme.dart';
import 'package:examen/screen_views/clases.dart';

class Presion extends StatefulWidget {
  const Presion ({Key? key}) : super(key: key);

  @override
  State<Presion > createState() => _PresionState();
}

class _PresionState extends State<Presion > {

  
  final TextEditingController presionController = TextEditingController();

  String categoria = '';
  double presion = 0;

  void calcular(){

    String presion_ = presionController.text;
    presion = double.parse(presion_);


    setState(() {

       if (presion < 120) {
      categoria = "Normal";
    } else if (presion > 120 && presion <= 129) {
      categoria = "Alta (sin otros factores de riesgo cardíaco)";
    } else if (presion >= 130 && presion <= 179) {
      categoria = "Alta (con otros factores de riesgo cardíaco, según algunos proveedores)";
    } else {
      categoria = "peligrosamente alta ";
    }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.primary,
          title: const Text('IMC') ,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuInput(
                textStyle: const TextStyle(color: AppTheme.primary),
                controller: presionController,
                inputDecoration: InputDecoration(
                  labelText: 'Presión',
                  hintText: 'Ingrese la presión',
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
              const SizedBox(height: 20),
              Text('Presión arterial: $presion'),
              Text('Categoría: $categoria'),
            ],
          ),
        ),
      ),
    );
  }
}