import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oriented_dash/widgets/appbar_nav.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: MediaQuery.of(context).size.width,
      color: Color(0xFF373E98),
      child: Row(
        children: [
          SizedBox(
            width: 100,
          ),
          Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Freelancer',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
          SizedBox(
            width: 210,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeadrButtonz(
                selected: true,
                text: 'Home',
              ),
              SizedBox(
                width: 40,
              ),
              HeadrButtonz(
                selected: false,
                text: 'Find a Team',
              ),
              SizedBox(
                width: 40,
              ),
              HeadrButtonz(
                selected: false,
                text: 'Publish a Project',
              ),
              SizedBox(
                width: 40,
              ),
              HeadrButtonz(
                selected: false,
                text: 'About',
              ),
            ],
          ),
          SizedBox(
            width: 210,
          ),
          Row(
            children: [
              Text(
                'Sign Up',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 1,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Log In',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 69,
          ),
        ],
      ),
    );
  }
}
