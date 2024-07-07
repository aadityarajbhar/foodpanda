// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodpanda/consts/colors.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    this.controller,
    required this.lableText,
    this.noIcon = true,
    this.onChanged,
    this.validator,
  });
  final TextEditingController? controller;
  final String lableText;
  bool noIcon;
  Function(String)? onChanged;
  String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure,
      onChanged: widget.onChanged,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIconColor: primaryColor,
        suffixIcon: widget.noIcon
            ? SizedBox()
            : IconButton(
                onPressed: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
                icon: isObsecure
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
              ),
        labelText: widget.lableText,
        contentPadding: EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: greyColor[200]!,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: greyColor[200]!,
          ),
        ),
      ),
    );
  }
}
