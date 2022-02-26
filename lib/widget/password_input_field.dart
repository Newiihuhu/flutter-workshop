import 'package:flutter/material.dart';
import 'package:workshop/constants.dart';
import 'package:workshop/widget/text_field_container.dart';

class PasswordInputField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const PasswordInputField(
      {Key? key, required this.hintText, required this.onChanged})
      : super(key: key);

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextFormField(
      onChanged: widget.onChanged,
      cursorColor: kPrimaryColor,
      obscureText: _obscureText,
      decoration: InputDecoration(
          icon: const Icon(Icons.lock, color: kPrimaryColor),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,
                  color: kPrimaryColor)),
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.subtitle1),
    ));
  }
}
