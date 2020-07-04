import 'package:flutter/material.dart';
import 'package:welcome_login_ui/constants.dart';

class ScreenHeading extends StatelessWidget {
  final Widget route;
  final String screenAction;
  final String screenOption;
  const ScreenHeading({
    Key key,
    @required this.route,
    this.screenAction,
    this.screenOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding * 2.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget>[
            Text(
              screenAction,
              style: TextStyle(
                  color: kTextColor,
                  fontFamily: 'Roboto',
                  fontSize: 43.0,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => route,
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  screenOption,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontFamily: 'Roboto',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
