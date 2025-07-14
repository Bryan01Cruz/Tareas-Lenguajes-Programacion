import 'package:flutter/material.dart';

class TextfieldPassword extends StatelessWidget {
  const TextfieldPassword({super.key, required this.controller, required this.keyboardType, 
  required this.borderRadius,required this.label, this.hintText, this.prefixIcon,this.contentPadding,
  this.obscureText=true,required this.toggle});

  final TextEditingController controller;
  final TextInputType keyboardType;
  final BorderRadius borderRadius;
  final String label;
  final String? hintText;
  final Icon? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final ValueNotifier<bool> toggle;
  

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: toggle, 
    builder: (context, obscureText, _){
    return TextField(
      readOnly: false,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: borderRadius,
        ),
      contentPadding: contentPadding,
      label: Text(label),
      hintText: hintText,
      prefixIcon: prefixIcon,
      suffix: IconButton(icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility), 
      onPressed: () => toggle.value = !obscureText)
      ), 
    );
    });
  }
}
