import 'package:flutter/material.dart';
import 'package:welcome_login_ui/constants.dart';
import '../../components/screen_heading.dart';
import '../../components/input_field_container.dart';
import '../../components/action_button.dart';
import 'components/social_icons.dart';
import 'package:welcome_login_ui/screens/signup_screen/signup_screen.dart';
import 'package:welcome_login_ui/components/profile_photo.dart';
import 'package:welcome_login_ui/components/extra_info.dart';

class LogInScreen extends StatelessWidget {
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
              route: SignUpScreen(),
              screenAction: 'Log In',
              screenOption: 'Sign Up',
            ),
            SizedBox(height: size.height * 0.08),
            ProfilePhoto(
              imgUrl: 'assets/images/duncohd.jpg',
            ),
            SizedBox(height: size.height * 0.08),
            InputFieldContainer(
              hintText: 'Username or Email',
              obscureText: false,
              onChanged: (value) {},
            ),
            SizedBox(height: 20.0),
            InputFieldContainer(
              hintText: 'Password',
              obscureText: true,
              suffix: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.08),
            ActionButton(
              action: 'LOG IN',
            ),
            SizedBox(height: size.height * 0.08),
            ExtraInfo(
              info: 'Login with',
            ),
            SizedBox(
              height: 20.0,
            ),
            SocialIcons(),
            SizedBox(height: size.height * 0.08),
          ],
        ),
      ),
    );
  }
}
