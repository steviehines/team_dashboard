import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
    required this.top,
    required this.left,
    required this.factor,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final double top;
  final double left;
  final double factor;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: top,
      left: left,
      child: Container(
        padding: EdgeInsets.all(8 * factor),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 5.0 * factor),
              blurRadius: 5 * factor,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 12.0 * factor,
              backgroundColor: Colors.grey[800],
              child: Icon(
                Icons.mail_outline_rounded,
                size: 12 * factor,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 9 * factor,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.nunito(
                    color: Colors.black87,
                    fontSize: 8 * factor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
