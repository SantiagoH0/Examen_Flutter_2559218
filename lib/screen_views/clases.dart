    
import 'package:flutter/material.dart';

class MenuInput extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final TextStyle? textStyle; 
  final InputDecoration? inputDecoration; 

  const MenuInput({
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.controller,
    this.textStyle,
    this.inputDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: keyboardType,
      controller: controller,
      textCapitalization: TextCapitalization.words,
      style: textStyle, // Aplicar estilo de texto aquí
      decoration: inputDecoration ?? const InputDecoration(), 
      onChanged: (value) {
        print('value: $value');
      },
    );
  }
}
