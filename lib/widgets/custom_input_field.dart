import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? sufixIcon;
  final TextInputType? keyBoardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;
  final String? Function(String?)? validator;

  const CustomInputField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.icon,
      this.sufixIcon,
      this.keyBoardType,
      this.obscureText = false,
      required this.formProperty,
      required this.formValues,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyBoardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          suffixIcon: sufixIcon == null ? null : Icon(sufixIcon),
          icon: icon == null ? null : Icon(icon)),
    );
  }
}
