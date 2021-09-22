import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPaleTte extends StatelessWidget {
  const InfoPaleTte({
    Key? key,
    required this.text,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String text;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            size: 22,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: GoogleFonts.nunito(
            fontSize: 19,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 200,
          child: Text(
            text,
            style: GoogleFonts.nunito(
              fontSize: 14,
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Learn more....',
          style: GoogleFonts.nunito(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
        Container(
          height: 1.5,
          width: 90,
          color: Colors.black87,
        ),
      ],
    );
  }
}
