import 'package:flutter/material.dart';
import 'package:examen/theme/app_theme.dart';
import 'package:examen/screen_views/clases.dart';

class Calorias extends StatefulWidget {
  const Calorias({Key? key}) : super(key: key);

  @override
  State<Calorias> createState() => _CaloriasState();
}

class _CaloriasState extends State<Calorias> {

  
  final TextEditingController desayunoController = TextEditingController();
  final TextEditingController almuerzoController = TextEditingController();
  final TextEditingController cenaController = TextEditingController();
  final TextEditingController generoController = TextEditingController();

  double calorias = 0;
  String mensaje = '';

  void calcular(){

    String desyuno_ = desayunoController.text;
    double desayuno = double.parse(desyuno_);

    String almuerzo_ = almuerzoController.text;
    double almuerzo = double.parse(almuerzo_);

    String cena_ = cenaController.text;
    double cena = double.parse(cena_);

    String genero = generoController.text;
    

    setState(() {
      calorias = desayuno + almuerzo + cena;
    });

    if (genero.isEmpty) {
      setState(() {
        mensaje = 'Seleccione un género antes de calcular';
      });
      return;
    }

    if (genero == 'mujer') {
      if (calorias < 1600) {
        mensaje += 'Déficit calórico ';
      } else if (calorias >= 1600 && calorias <= 2000) {
        mensaje += 'Consumo normal ';
      } else {
        mensaje += 'Consumo Excesivo de calorías para mujer';
      }
    } else if(genero == 'hombre') {
      if (calorias < 1600) {
        mensaje += 'Déficit calórico';
      } else if (calorias >= 2000 && calorias <= 2500) {
        mensaje += 'Consumo normal ';
      } else {
        mensaje += 'Consumo Excesivo de calorías';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.primary,
          title: const Text('Calorías') ,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*DropdownButtonFormField<String>(
                value: genero,
                items:const [
                  DropdownMenuItem(value: 'mujer', child: Text('Mujer')),
                  DropdownMenuItem(value: 'hombre', child: Text('Hombre')),
                ],
                onChanged: (value) {
                  setState(() {
                  genero = value!;
                  });
                },
              ),*/
              MenuInput(
                textStyle: const TextStyle(color: AppTheme.primary),
                controller: generoController,
                inputDecoration: InputDecoration(
                  labelText: 'Género',
                  hintText: 'Ingrese su género',
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
                controller: desayunoController,
                inputDecoration: InputDecoration(
                  labelText: 'Calorías Deasayuno',
                  hintText: 'Ingrese las calorías del desayuno',
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
                controller: almuerzoController,
                inputDecoration: InputDecoration(
                  labelText: 'Calorías Almuerzo',
                  hintText: 'Ingrese las calorías del almuerzo',
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
                controller: cenaController,
                inputDecoration: InputDecoration(
                  labelText: 'Calorías Cena',
                  hintText: 'Ingrese las calorías de la cena',
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
              Text('Calorías: $calorias'),
              Text('Estado: $mensaje')
            ],
          ),
        ),
      ),
    );
  }
}