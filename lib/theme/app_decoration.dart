import 'package:flutter/material.dart';

abstract class AppDecoration {
  static final Decoration authScreenDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(24),
    color: Colors.white,
  );
  static InputDecoration authTextFieldDecoration(String hint) {
    return InputDecoration(
      hintStyle: TextStyle(color:Colors.grey,fontWeight: FontWeight.w500 ),
      hintText: hint,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 1),
        
        borderRadius: BorderRadius.circular(15)
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 1),
        
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}
