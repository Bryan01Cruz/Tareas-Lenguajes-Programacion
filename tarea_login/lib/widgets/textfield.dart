import 'package:flutter/material.dart';

class TextfieldPropio extends StatelessWidget {
  const TextfieldPropio({super.key, required this.controller, required this.KeyboardType, required this.borderRadius,required this.label, this.hintText, this.prefixIcon,this.contentPadding, this.obscureText});

  final TextEditingController controller;
  final TextInputType KeyboardType;
  final BorderRadius borderRadius;
  final String label;
  final String? hintText;
  final Icon? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final bool? obscureText;

  final bool VerOcultar = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: KeyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: borderRadius,
        ),
      contentPadding: contentPadding,
      label: Text(label),
      hintText: hintText,
      prefixIcon: prefixIcon,
      suffixIcon: VerOcultar == true ? IconButton(
        icon: Icon(VerOcultar ? Icons.visibility : Icons.visibility_off),
        onPressed: () {}, 
        ):null,
      ),
      //leading: Icon(icon),
      //trailing: Icon(iconTrailing),
      //subtitle: subtitle != null ? Text(subtitle!) : null,
      //title: Text(title, style: TextStyle(fontWeight: FontWeight.w400)),
      //onTap: click,
    );
  }
}