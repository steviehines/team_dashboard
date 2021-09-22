import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.diameter,
    required this.top,
    required this.left,
    required this.image,
  }) : super(key: key);

  final double diameter;
  final double top;
  final double left;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: diameter,
        width: diameter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(300),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
