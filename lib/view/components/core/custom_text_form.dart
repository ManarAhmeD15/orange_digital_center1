import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customTextFormField( {required String label,
  var suffix,
  required var controller,
  required type,
  required Function validator,
  bool isPasswordShown = true}) {
  return TextFormField(
    controller: controller,
    obscureText: !isPasswordShown,
    validator: (String? value) {
      if (value!.isEmpty) {
        return "$label is required";
      }
      return null;
    },
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color:Colors.deepOrange),
          borderRadius: BorderRadius.circular(16)),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      labelText: "${label}",
      suffixIcon: suffix,
    ),
  );
}