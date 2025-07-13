import 'package:flutter/material.dart';

class TextfieldPropio extends StatelessWidget {
  const TextfieldPropio({super.key, required this.controller, required this.keyboardType, required this.borderRadius,required this.label, this.hintText, this.prefixIcon,this.contentPadding, this.obscureText});

  final TextEditingController controller;
  final TextInputType keyboardType;
  final BorderRadius borderRadius;
  final String label;
  final String? hintText;
  final Icon? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final bool? obscureText;
  
  final bool verOcultar = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: false,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: borderRadius,
        ),
      contentPadding: contentPadding,
      label: Text(label),
      hintText: hintText,
      prefixIcon: prefixIcon,
      suffixIcon: verOcultar == true ? IconButton(
        icon: Icon(verOcultar ? Icons.visibility : Icons.visibility_off),
        onPressed: () {}, 
        ):null,
      ),
      
    );
  }
}