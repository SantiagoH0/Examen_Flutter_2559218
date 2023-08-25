import 'package:flutter/material.dart';
import 'package:examen/theme/app_theme.dart';
import 'package:examen/screen_views/clases.dart';

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {

  
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

  double imc = 0;
  String composicion = '';

  void calcular(){

    String peso_ = pesoController.text;
    double peso = double.parse(peso_);

    String altura_ = alturaController.text;
    double altura = double.parse(altura_);


    setState(() {
      imc = peso / (altura * altura);

       if (imc < 18.5) {
      composicion = "Peso inferior al normal";
    } else if (imc >= 18.5 && imc <= 24.9) {
      composicion = "Normal";
    } else if (imc >= 25.0 && imc <= 29.9) {
      composicion = "Peso superior al normal";
    } else {
      composicion = "Obesidad";
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
                controller: pesoController,
                inputDecoration: InputDecoration(
                  labelText: 'Peso',
                  hintText: 'Ingrese el Peso',
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
                controller: alturaController,
                inputDecoration: InputDecoration(
                  labelText: 'Altura',
                  hintText: 'Ingrese la Altura',
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
              Text('Imc: $imc'),
              Text('Composición corporal: $composicion'),
            ],
          ),
        ),
      ),
    );
  }
}