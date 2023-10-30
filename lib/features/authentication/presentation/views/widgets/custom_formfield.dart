import 'package:flutter/material.dart';
import 'package:store_app/core/constants.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      required this.lable,
      required this.hint,
      required this.suffixIcon,
      required this.keyboardType,
      this.validator,
      this.onChanged,
      this.obscureText = false,
      this.onsave});
  final String lable, hint;
  final IconData suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Function(String?)? onsave;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsave,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      cursorColor: Colors.black,
      cursorHeight: 20,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: const TextStyle(fontSize: 22),
          label: Text(
            lable,
            style: const TextStyle(fontSize: 22),
          ),
          hintText: hint,
          border: myBorder(),
          enabledBorder: myBorder(),
          focusedBorder: myBorder(),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              suffixIcon,
              size: 30,
            ),
          )),
    );
  }
}
