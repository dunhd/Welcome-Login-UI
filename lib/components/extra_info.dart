import 'package:flutter/material.dart';

class ExtraInfo extends StatelessWidget {
  final String info;
  const ExtraInfo({
    Key key,
    this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          info,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
