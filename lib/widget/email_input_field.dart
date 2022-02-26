import 'package:flutter/material.dart';
import 'package:workshop/widget/text_field_container.dart';

import '../constants.dart';

class EmailInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const EmailInputField(
      {Key? key, required this.hintText, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: const Icon(Icons.person, color: kPrimaryColor),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.subtitle1),
      ),
    );
  }
}
