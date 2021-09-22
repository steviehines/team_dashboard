import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadrButtonz extends StatefulWidget {
  const HeadrButtonz({
    Key? key,
    required this.text,
    required this.selected,
  }) : super(key: key);

  final String text;
  final bool selected;

  @override
  _HeadrButtonzState createState() => _HeadrButtonzState();
}

class _HeadrButtonzState extends State<HeadrButtonz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        widget.selected
            ? SizedBox(
                height: 5,
              )
            : SizedBox(),
        widget.selected
            ? CircleAvatar(
                radius: 2,
                backgroundColor: Colors.white,
              )
            : SizedBox(),
      ],
    );
  }
}
