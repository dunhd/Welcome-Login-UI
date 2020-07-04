import 'package:flutter/material.dart';
import 'package:welcome_login_ui/constants.dart';

class InputFieldContainer extends StatelessWidget {
  final bool obscureText;
  final ValueChanged<String> onChanged;
  final String hintText;
  final Icon suffix;
  const InputFieldContainer({
    Key key,
    this.onChanged,
    this.hintText,
    this.suffix,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 3.0),
      child: TextField(
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldTextStyle(),
          suffix: suffix,
        ),
      ),
    );
  }

  TextStyle inputFieldTextStyle() {
    return TextStyle(
      color: kPrimaryColor,
      fontFamily: 'Roboto',
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
  }
}
