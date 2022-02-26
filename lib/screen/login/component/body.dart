import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widget/email_input_field.dart';
import '../../../widget/password_input_field.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
          height: size.height * 0.1,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "Login",
            style: Theme.of(context).textTheme.headline1,
          ),
        ]),
        SizedBox(height: size.height * 0.06),
        EmailInputField(
          hintText: "your email",
          onChanged: (value) {},
        ),
        PasswordInputField(
          hintText: "your password",
          onChanged: (value) {},
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: size.width * 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: ElevatedButton(
              child: Text(
                "LOGIN",
                style: Theme.of(context).textTheme.headline2,
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: const TextStyle(
                      color: lightColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
          ),
        ),
      ]),
    );
  }
}
