import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String imgUrl;
  const ProfilePhoto({
    Key key,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        radius: 70.0,
        backgroundImage: AssetImage(imgUrl),
      ),
    );
  }
}
