import 'package:examen/screen_views/imc.dart';
import 'package:examen/screen_views/presion_arterial.dart';
import 'package:examen/screen_views/rutinas.dart';
import 'package:flutter/material.dart';
import 'package:examen/screen_views/dietas.dart';
import 'package:examen/screen_views/calorias.dart';
import 'package:examen/screen_views/contacto.dart';

List<String> opciones = ['Dietas', 'IMC', 'Calorías', 'Rutinas de Ejercicio', 'Presión Arterial', 'Contacto'];
List<IconData> iconos = [Icons.arrow_right, Icons.android_rounded];

class Listas extends StatelessWidget {
  const Listas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 165, 156, 59),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Menú de información',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: opciones.map((opcion) {
          if (opcion == 'Dietas') {
            return ListTile(
              title: Text(opcion),
              leading: Icon(iconos[0], color: Colors.orange),
              //trailing: Icon(iconos[1], color: Colors.orange),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dieta()),
                );
              },
            );
          } else if (opcion == 'IMC') {
            return ListTile(
              title: Text(opcion),
              leading: Icon(iconos[0], color: Colors.orange),
              //trailing: Icon(iconos[1], color: Colors.orange),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Imc()),
                );
              },
            );
          }else if(opcion == 'Calorías'){
            return ListTile(
              title: Text(opcion),
              leading: Icon(iconos[0], color: Colors.orange),
              //trailing: Icon(iconos[1], color: Colors.orange),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Calorias()),
                );
              },
            );
          }else if(opcion == 'Rutinas de Ejercicio'){
            return ListTile(
              title: Text(opcion),
              leading: Icon(iconos[0], color: Colors.orange),
              //trailing: Icon(iconos[1], color: Colors.orange),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rutinas()),
                );
              },
            );
          }else if(opcion == 'Presión Arterial'){
            return ListTile(
              title: Text(opcion),
              leading: Icon(iconos[0], color: Colors.orange),
              //trailing: Icon(iconos[1], color: Colors.orange),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Presion()),
                );
              },
            );
          }else if(opcion == 'Contacto'){
            return ListTile(
              title: Text(opcion),
              leading: Icon(iconos[0], color: Colors.orange),
              //trailing: Icon(iconos[1], color: Colors.orange),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contacto()),
                );
              },
            );
          } else {

            return ListTile(
              title: Text(opcion),
              leading: Icon(iconos[0], color: Colors.orange),
              //trailing: Icon(iconos[1], color: Colors.orange),
              onTap: () {
                
              },
            );
          }
        }).toList(),
      ),
    );
  }
}
