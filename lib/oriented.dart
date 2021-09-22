import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oriented_dash/widgets/app_bar.dart';
import 'package:oriented_dash/widgets/buTTon.dart';
import 'package:oriented_dash/widgets/footer.dart';
import 'package:oriented_dash/widgets/info_palette.dart';
import 'package:oriented_dash/widgets/profile_image.dart';
import 'package:oriented_dash/widgets/profile_tile.dart';
import 'package:oriented_dash/widgets/testimonial_tile.dart';

class Oriented extends StatefulWidget {
  const Oriented({Key? key}) : super(key: key);

  @override
  _OrientedState createState() => _OrientedState();
}

class _OrientedState extends State<Oriented> {
  ScrollController? _controller;
  double _pixels = 0.0;
  int _animeDuration = 900;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();

    _controller!.addListener(() {
      setState(() {
        _pixels = _controller!.position.pixels;
        print(_pixels);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var sizE = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: sizE.height,
        width: double.infinity,
        child: SingleChildScrollView(
          controller: _controller,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 600,
                        width: sizE.width * .45,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180.0, 170.0),
                              child: Container(
                                height: 350,
                                width: 700,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(300),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 200,
                              left: 100,
                              child: Container(
                                height: 400,
                                width: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Manage all your',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 38,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Projects in one place.',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 300,
                                      child: Text(
                                        'Describe your project and find a top talent team from around the world or near you. Leave your E-Mail to get invite for 30 days free trial.',
                                        style: GoogleFonts.nunito(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 230,
                                          height: 45,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Enter your email address',
                                              hintStyle: GoogleFonts.nunito(
                                                fontSize: 12,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                horizontal: 21,
                                                vertical: 11,
                                              ),
                                            ),
                                            cursorColor: Colors.grey[500],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        ButtOn(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 600,
                        width: sizE.width * .55,
                        color: Colors.white,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                              diameter: 200,
                              image: 'assets/images/design.jpg',
                              left: 90,
                              top: 140,
                            ),
                            ProfileImage(
                              diameter: 100,
                              image: 'assets/images/devb.jpg',
                              left: 310,
                              top: 160,
                            ),
                            ProfileImage(
                              diameter: 280,
                              image: 'assets/images/managr.jpg',
                              left: 280,
                              top: 275,
                            ),
                            ProfileImage(
                              diameter: 170,
                              image: 'assets/images/photog.jpg',
                              left: 90,
                              top: 360,
                            ),
                            ProfileTile(
                              top: 380,
                              left: 50,
                              factor: .5,
                              title: 'Photography is an Art, Lets do it ryt!',
                              subtitle: 'Harshell, Photographer',
                            ),
                            ProfileTile(
                              top: 140,
                              left: -10,
                              factor: .9,
                              title: 'I am Gonna give you a Color theory',
                              subtitle: 'Scarlett, Designer',
                            ),
                            ProfileTile(
                              top: 160,
                              left: 380,
                              factor: .4,
                              title: 'Lets implement your idea into code',
                              subtitle: 'Beldina, Developer',
                            ),
                            ProfileTile(
                              top: 270,
                              left: 440,
                              factor: 1.1,
                              title:
                                  'I am Gonna give you a viable product \nin the shortest time',
                              subtitle: 'Mark, Project Manager',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Head(),
                ],
              ),
              Container(
                height: 400,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      right: -200,
                      child: Container(
                        height: 330,
                        width: 430,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(300),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'How it works',
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AnimatedOpacity(
                              opacity: _pixels >= 100 ? 1 : 0,
                              duration: Duration(microseconds: _animeDuration),
                              child: AnimatedPadding(
                                duration:
                                    Duration(microseconds: _animeDuration),
                                padding: EdgeInsets.only(
                                  left: _pixels >= 100 ? 0 : 500,
                                ),
                                child: InfoPaleTte(
                                  text:
                                      'Communicate with Colleagues, share ideas, find a team for a project all in one space.',
                                  title: 'Community',
                                  icon: Icons.people_rounded,
                                ),
                              ),
                            ),
                            InfoPaleTte(
                              text:
                                  'Track your progress, thanks to the reporting system right inside the platform.',
                              title: 'Overview Reports',
                              icon: Icons.pie_chart_rounded,
                            ),
                            InfoPaleTte(
                              text:
                                  'Manage your projects and tasks by tracking activity on the dashboard.',
                              title: 'Dashboard',
                              icon: Icons.person_rounded,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            primary: Colors.black87,
                            padding: EdgeInsets.all(0),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 11,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(.5))),
                            child: Text(
                              'Explore more',
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: sizE.width,
                height: 500,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -250,
                      child: Container(
                        width: 700,
                        height: 450,
                        decoration: BoxDecoration(
                          color: Colors.amber[400],
                          borderRadius: BorderRadius.circular(400),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: Duration(microseconds: _animeDuration),
                      top: 20,
                      left: _pixels >= 500 ? 100 : 0,
                      child: Container(
                        width: 700,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          'assets/images/eyecand.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ProfileTile(
                      top: -10,
                      left: 80,
                      factor: 1,
                      title: 'Sara, Client',
                      subtitle: 'Send a final design to the team',
                    ),
                    ProfileTile(
                      top: 400,
                      left: 620,
                      factor: 1,
                      title: 'Michael',
                      subtitle: 'Publish your project whenever you want',
                    ),
                    AnimatedPositioned(
                      duration: Duration(microseconds: _animeDuration),
                      right: _pixels >= 600 ? 100 : 0,
                      top: 150,
                      child: AnimatedOpacity(
                        opacity: _pixels >= 600 ? 1 : 0,
                        duration: Duration(microseconds: _animeDuration),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Easy Project Management',
                              style: GoogleFonts.nunito(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 280,
                              child: Text(
                                'Manage your project, Organise your own workspace, keep statistics and collaborate with your teammates in one place.',
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                backgroundColor: Colors.grey[900],
                                padding: EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 20,
                                ),
                              ),
                              child: Text(
                                'Try for free',
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 600,
                width: sizE.width,
                color: Colors.white,
                child: Stack(
                  children: [
                    Align(
                      child: Column(
                        children: [
                          Text(
                            'Be in the community',
                            style: GoogleFonts.nunito(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Meet New people and leave testimonials about your teammates',
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedAlign(
                      duration: Duration(microseconds: _animeDuration),
                      alignment: _pixels >= 1200
                          ? Alignment(0, 0)
                          : Alignment(-0.2, 0),
                      child: AnimatedOpacity(
                        opacity: _pixels >= 1200 ? 1 : 0,
                        duration: Duration(microseconds: _animeDuration),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    left: -70,
                                    top: -60,
                                    child: Icon(
                                      Icons.format_quote,
                                      color: Colors.grey[300],
                                      size: 150,
                                    ),
                                  ),
                                  Text(
                                    'Excellent',
                                    style: GoogleFonts.nunito(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 360,
                                child: Text(
                                  'To the Freelancer, I found a team for a project during one i met new cool specialist, and project management has become much faster and simpler',
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Comment detail',
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Container(
                                height: 1.5,
                                width: 100,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TestimonialTile(
                      image: 'assets/images/devb.jpg',
                      top: _pixels >= 1000 ? 100 : 130,
                      left: 780,
                      leftAlign: false,
                    ),
                    TestimonialTile(
                      image: 'assets/images/managr.jpg',
                      top: _pixels >= 1200 ? 400 : 430,
                      left: 840,
                      leftAlign: false,
                    ),
                    TestimonialTile(
                      image: 'assets/images/design.jpg',
                      top: _pixels >= 1300 ? 450 : 480,
                      left: 440,
                      leftAlign: true,
                    ),
                    Positioned(
                      right: 350,
                      top: 200,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.red[600],
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              offset: Offset(0, 10),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    Positioned(
                      right: 200,
                      top: 250,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              offset: Offset(0, 10),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 250,
                      top: 450,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFF373E98),
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              offset: Offset(0, 10),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizE.width,
                height: 600,
                color: Color(0xFF373E98),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AnimatedAlign(
                      duration: Duration(microseconds: _animeDuration),
                      alignment: _pixels >= 1600
                          ? Alignment(0, 1)
                          : Alignment(-0.2, 1),
                      child: AnimatedOpacity(
                        duration: Duration(microseconds: _animeDuration),
                        opacity: _pixels >= 1600 ? 1 : 0,
                        child: Container(
                          height: 600,
                          width: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 69,
                              ),
                              Text(
                                'Get started today',
                                style: GoogleFonts.josefinSans(
                                  fontSize: 35,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Freelancer - Community of people who value their time',
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        padding: EdgeInsets.all(0),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 12,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Text(
                                          'Get My Price',
                                          style: GoogleFonts.josefinSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF373E98),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      padding: EdgeInsets.all(0),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Text(
                                        'Try for free',
                                        style: GoogleFonts.josefinSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Footer(),
                    ),
                    Align(
                      alignment: Alignment(1.18, 0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.amber[400],
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
