import 'package:flutter/material.dart';
import 'package:welcome_login_ui/constants.dart';
import 'package:welcome_login_ui/components/screen_heading.dart';
import 'package:welcome_login_ui/screens/login_screen/login_screen.dart';
import 'package:welcome_login_ui/components/profile_photo.dart';
import 'package:welcome_login_ui/components/input_field_container.dart';
import 'package:welcome_login_ui/components/action_button.dart';
import 'package:welcome_login_ui/components/extra_info.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            ScreenHeading(
              screenAction: 'Sign Up',
              screenOption: 'Log In',
              route: LogInScreen(),
            ),
            SizedBox(height: size.height * 0.05),
            ProfilePhoto(
              imgUrl: 'assets/images/addPhoto.jpg',
            ),
            SizedBox(height: size.height * 0.05),
            InputFieldContainer(
              hintText: 'Email Address',
              onChanged: (value) {},
              obscureText: false,
            ),
            SizedBox(height: 20.0),
            InputFieldContainer(
              hintText: 'User Name',
              onChanged: (value) {},
              obscureText: false,
            ),
            SizedBox(height: 20.0),
            InputFieldContainer(
              hintText: 'Password',
              onChanged: (value) {},
              obscureText: true,
              suffix: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: 20.0),
            InputFieldContainer(
              hintText: 'Reapeat Password',
              onChanged: (value) {},
              obscureText: true,
              suffix: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: size.height * 0.08),
            ActionButton(
              action: 'SIGN UP',
            ),
            SizedBox(
              height: 25.0,
            ),
            ExtraInfo(
              info: 'Terms of Service',
            ),
            SizedBox(height: size.height * 0.08),
          ],
        ),
      ),
    );
  }
}
