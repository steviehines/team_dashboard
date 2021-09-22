import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtOn extends StatelessWidget {
  const ButtOn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Container(
        width: 100,
        height: 45,
        child: Center(
          child: Text(
            'Get Invite',
            style: GoogleFonts.nunito(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
