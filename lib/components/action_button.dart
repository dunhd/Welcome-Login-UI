import 'package:flutter/material.dart';
import 'package:welcome_login_ui/constants.dart';

class ActionButton extends StatelessWidget {
  final String action;
  const ActionButton({
    Key key,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 3.0),
      child: Material(
        elevation: 10.0,
        shadowColor: kPrimaryColor.withOpacity(0.3),
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(22.0),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.check),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  action,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontFamily: 'Roboto',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
